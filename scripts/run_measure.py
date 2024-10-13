import os
import subprocess
import json

def process_stdout(process_output):
    string_output = process_output.decode('utf-8')
    json_begin = string_output.index("{")
    json_ends = string_output.index("}")
    json_string = string_output[json_begin:json_ends + 1]
    results = json.loads(json_string)
    print(f"results: {results}")

def run_swift_code(from_path):
    cwd = os.getcwd()
    os.chdir(from_path)
    subprocess.run(["swift", "package", "clean"]) 
    process_output = subprocess.check_output(["swift", "run", "-c", "release"])
    process_stdout(process_output)
    os.chdir(cwd)

def run_rust_code(from_path):
    cwd = os.getcwd()
    os.chdir(from_path)
    subprocess.run(["cargo", "clean"]) 
    process_output = subprocess.check_output(["cargo", "run", "--release"])
    process_stdout(process_output)
    os.chdir(cwd)

EXCLUDE = ["Fasta", "RustModules", "scripts", "SwiftModules"]

original_folder = os.getcwd()
try:
    os.chdir('..')
                    
    folders = os.walk("./")
    folders = [folder for folder in folders if not folder[0].startswith('../.')]
    folders = [folder for folder in folders if folder[0].endswith("/Rust/benchmark") or folder[0].endswith("/Swift")]
    for exclude in EXCLUDE:
        folders = [folder for folder in folders if not exclude in folder[0]]

    for root, dirs, files in folders:
        if "Rust" in root:
            run_rust_code(root)
        elif "Swift" in root:
            run_swift_code(root)
except:
    subprocess.call(f"cd {original_folder}")
