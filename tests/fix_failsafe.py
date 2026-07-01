import os
import glob

def main():
    test_files = glob.glob('/home/randy/Workspace/REPOS/nmaps/tests/*.npk')
    for fpath in test_files:
        with open(fpath, 'r', encoding='utf-8') as f:
            content = f.read()
            
        new_content = content.replace(
            "pub func:failsafe = int32(tbb32:err) { exit 1i32; };",
            "pub func:failsafe = int32(tbb32:err) { exit(err => int32); };"
        )
        
        if new_content != content:
            with open(fpath, 'w', encoding='utf-8') as f:
                f.write(new_content)
            print(f"Fixed failsafe in {fpath}")

if __name__ == '__main__':
    main()
