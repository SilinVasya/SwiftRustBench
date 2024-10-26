# extra libs needs to be installed:
# 1. pip3 install py-cpuinfo

import os
import subprocess
import json
import platform
import cpuinfo
import sys

default_bench_subname = "default"
subname_key = "subname"

out_prefix = "<<<RESULTS:"
out_postfix = ">>>"
def process_stdout(process_output, store_to):
    string_output = process_output.decode('utf-8')
    json_begin = string_output.index(out_prefix)
    json_ends = string_output.index(out_postfix)
    json_string = string_output[json_begin + len(out_prefix):json_ends]
    results = json.loads(json_string)
    store_to.append(results)
    print(f"results: {results}")

def run_swift_code(from_path, store_to):
    cwd = os.getcwd()
    os.chdir(from_path)
    subprocess.run(["swift", "package", "clean"]) 
    process_output = subprocess.check_output(["swift", "run", "-c", "release"])
    print(process_output)
    process_stdout(process_output, store_to)
    os.chdir(cwd)

def run_rust_code(from_path, store_to):
    cwd = os.getcwd()
    os.chdir(from_path)
    subprocess.run(["cargo", "clean"]) 
    process_output = subprocess.check_output(["cargo", "run", "--release"])
    print(process_output)
    process_stdout(process_output, store_to)
    os.chdir(cwd)
    
def create_github_table(swift_bench, rust_bench):
    if swift_bench[subname_key] != rust_bench[subname_key]:
        print(f"Subname missmatch: Swift {swift_bench[subname_key]}; Rust {rust_bench[subname_key]}")
        sys.exit(-5)
    
    result_string = f'''
| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | {swift_bench["measures_count"]} | {rust_bench["measures_count"]} |
| Total time      | {swift_bench["total_time"]} ms  | {rust_bench["total_time"]} ms  |
| Diff | {swift_bench["diff"]} ms  | {rust_bench["diff"]} ms  |
| Max | {swift_bench["max"]} ms  | {rust_bench["max"]} ms  |
| Min | {swift_bench["min"]} ms  | {rust_bench["min"]} ms  |
| Avg | {swift_bench["average"]} ms  | {rust_bench["average"]} ms  |
| Median | {swift_bench["median"]} ms  | {rust_bench["median"]} ms  |
    '''
    
    if swift_bench[subname_key] != default_bench_subname:
        return f"**{swift_bench[subname_key]}**\n{result_string}"
    
    return result_string

original_folder = os.getcwd()
if sys.platform == 'win32':
    path_delimeter = "\\"
else:
    path_delimeter = "/"

try:
    os.chdir('..')
    
    print("Looking for benchs code folders")
    folders = os.walk(f".{path_delimeter}benchs")
    folders = [folder for folder in folders if not folder[0].startswith(f"..{path_delimeter}.")]
    folders = [folder for folder in folders if folder[0].endswith(f"{path_delimeter}Rust{path_delimeter}benchmark") or folder[0].endswith(f"{path_delimeter}Swift")]
    
    print(f"Found folders:\n{folders}")
    rust_store = []
    swift_store = []
    for root, dirs, files in folders:
        if "Rust" in root:
            print(f"Running Rust at - {root}")
            run_rust_code(root, rust_store)
        elif "Swift" in root:
            print(f"Running Swift at - {root}")
            run_swift_code(root, swift_store)

    print("Grouping results")
    rust_path_key = "rust"
    all_results = {}
    for rust_result in rust_store:
        if not rust_result["name"] in all_results:
            all_results[rust_result["name"]] = { rust_path_key: [rust_result] }
        else:
            name_results = all_results[rust_result["name"]]
            name_results[rust_path_key].append(rust_result)

    print(f"All Rust results keys: {all_results.keys()}")
    swift_path_key = "swift"
    for swift_result in swift_store:
        if not swift_result["name"] in all_results:
            print(f"Can't find Rust results for {swift_result['name']}. Pairing missmatch.")
            sys.exit(-1)
        
        name_results = all_results[swift_result["name"]]
        if not swift_path_key in name_results:
            name_results[swift_path_key] = [swift_result]
        else:
            name_results[swift_path_key].append(swift_result)

    print("Writing results to file")
    file_name = f"{platform.system()}_{cpuinfo.get_cpu_info()['brand_raw'].lower().replace(' ', '_')}"
    f = open(f"results{path_delimeter}{file_name}.md", "w")
    f.write(f"**Processor (cpuinfo brand_raw):** {cpuinfo.get_cpu_info()['brand_raw']}\\\n")
    f.write(f"**Architecture - bit architecture:** {platform.architecture()[0]}\\\n")
    f.write(f"**Architecture - linkage format used for the executable:** {platform.architecture()[1]}\\\n")
    f.write(f"**Machine type:** {platform.machine()}\\\n")
    f.write(f"**Platform:** {platform.platform()}\\\n")
    f.write(f"**Platform aliased:** {platform.platform()}\\\n")
    f.write(f"**System:** {platform.system()}\\\n")
    f.write(f"**System's release:** {platform.release()}\\\n")
    f.write(f"**System's version:** {platform.version()}\\\n")
    f.write(f"**Processor:** {platform.processor()}\\\n")
    f.write(f"**Processor (cpuinfo full):** {cpuinfo.get_cpu_info()}\\\n") # Example: Processor (cpuinfo): {'python_version': '3.9.6.final.0 (64 bit)', 'cpuinfo_version': [9, 0, 0], 'cpuinfo_version_string': '9.0.0', 'arch': 'ARM_8', 'bits': 64, 'count': 12, 'arch_string_raw': 'arm64', 'brand_raw': 'Apple M2 Pro'}
    f.write("\n")
    
    sorted_results = sorted(all_results.items())
    for key, results in sorted_results:
        if len(results[swift_path_key]) != len(results[rust_path_key]):
            print(f"RESULTS LENGTH MISSMATCH!!!!!!!!\nSwift: {results['swift']}\nRust: {results['rust']}")
            sys.exit(-4)
        
        paired_results = {}
        for rust_result in results[rust_path_key]:
            if rust_result[subname_key] in paired_results:
                print(f"Same subname used twice {rust_result[subname_key]}. Pairing missmatch.")
                sys.exit(-2)
            
            paired_results[rust_result[subname_key]] = { rust_path_key: rust_result }

        for swift_result in results[swift_path_key]:
            if not swift_result[subname_key] in paired_results:
                print(f"No subname for Rust result {swift_result[subname_key]}. Pairing missmatch.")
                sys.exit(-3)
            
            paired_results[swift_result[subname_key]][swift_path_key] = swift_result
        
        print(f"paired_results: {paired_results}")
        
        paired_results = sorted(paired_results.items())
        f.write("==============================================================\n")
        for key, results in paired_results:
            f.write(create_github_table(results[swift_path_key], results[rust_path_key]))
            f.write("\n")

    f.close()
    print(f"Done! Check results folder for file with name '{file_name}'.")

    os.chdir(original_folder)
    
except:
    subprocess.call(f"cd {original_folder}")
