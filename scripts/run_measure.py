# extra libs needs to be installed:
# 1. pip3 install py-cpuinfo

import os
import subprocess
import json
import platform
import cpuinfo

def process_stdout(process_output, store_to):
    string_output = process_output.decode('utf-8')
    json_begin = string_output.index("{")
    json_ends = string_output.index("}")
    json_string = string_output[json_begin:json_ends + 1]
    results = json.loads(json_string)
    store_to.append(results)
    print(f"results: {results}")

def run_swift_code(from_path, store_to):
    cwd = os.getcwd()
    os.chdir(from_path)
    subprocess.run(["swift", "package", "clean"]) 
    process_output = subprocess.check_output(["swift", "run", "-c", "release"])
    process_stdout(process_output, store_to)
    os.chdir(cwd)

def run_rust_code(from_path, store_to):
    cwd = os.getcwd()
    os.chdir(from_path)
    subprocess.run(["cargo", "clean"]) 
    process_output = subprocess.check_output(["cargo", "run", "--release"])
    process_stdout(process_output, store_to)
    os.chdir(cwd)
    
def create_github_table(swift_bench, rust_bench):
    return f'''
{swift_bench["name"]}
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | {swift_bench["measures_count"]} | {rust_bench["measures_count"]} |
| Total time      | {swift_bench["total_time"]} ms  | {rust_bench["total_time"]} ms  |
| Diff | {swift_bench["diff"]} ms  | {rust_bench["diff"]} ms  |
| Max | {swift_bench["max"]} ms  | {rust_bench["max"]} ms  |
| Min | {swift_bench["min"]} ms  | {rust_bench["min"]} ms  |
| Avg | {swift_bench["average"]} ms  | {rust_bench["average"]} ms  |
| Median | {swift_bench["median"]} ms  | {rust_bench["median"]} ms  |
    '''

EXCLUDE = ["Fasta", "RustModules", "scripts", "SwiftModules"]

original_folder = os.getcwd()
try:
    os.chdir('..')
                    
    folders = os.walk("./")
    folders = [folder for folder in folders if not folder[0].startswith('../.')]
    folders = [folder for folder in folders if folder[0].endswith("/Rust/benchmark") or folder[0].endswith("/Swift")]
    for exclude in EXCLUDE:
        folders = [folder for folder in folders if not exclude in folder[0]]

    rust_store = []
    swift_store = []
    for root, dirs, files in folders:
        if "Rust" in root:
            run_rust_code(root, rust_store)
        elif "Swift" in root:
            run_swift_code(root, swift_store)

    all_results = {}
    for rust_result in rust_store:
        all_results[rust_result["name"]] = { "rust": rust_result }

    for swift_result in swift_store:
        all_results[swift_result["name"]]["swift"] = swift_result

    f = open(f"results/{cpuinfo.get_cpu_info()['brand_raw'].lower().replace(' ', '_')}", "w")
    f.write(f"Processor (cpuinfo brand_raw): {cpuinfo.get_cpu_info()['brand_raw']}\n")
    f.write(f"Architecture - bit architecture: {platform.architecture()[0]}\n")
    f.write(f"Architecture - linkage format used for the executable: {platform.architecture()[1]}\n")
    f.write(f"Machine type: {platform.machine()}\n")
    f.write(f"Platform: {platform.platform()}\n")
    f.write(f"Platform aliased: {platform.platform()}\n")
    f.write(f"System: {platform.system()}\n")
    f.write(f"System's release: {platform.release()}\n")
    f.write(f"System's version: {platform.version()}\n")
    f.write(f"Processor: {platform.processor()}\n")
    f.write(f"Processor (cpuinfo full): {cpuinfo.get_cpu_info()}\n") # Example: Processor (cpuinfo): {'python_version': '3.9.6.final.0 (64 bit)', 'cpuinfo_version': [9, 0, 0], 'cpuinfo_version_string': '9.0.0', 'arch': 'ARM_8', 'bits': 64, 'count': 12, 'arch_string_raw': 'arm64', 'brand_raw': 'Apple M2 Pro'}
    f.write("\n")
    
    for key in all_results:
        results = all_results[key]
        f.write("==============================================================\n")
        f.write(create_github_table(results["swift"], results["rust"]))
        f.write("\n")

    f.close()

    subprocess.call(f"cd {original_folder}")
    
except:
    subprocess.call(f"cd {original_folder}")
