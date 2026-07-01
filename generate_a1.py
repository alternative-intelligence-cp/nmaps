import os
import subprocess

repo_dir = "/home/randy/Workspace/REPOS/nmaps"
audit_dir = "/home/randy/Workspace/META/NMAPS/audits/a2"
os.makedirs(audit_dir, exist_ok=True)

content = ""

# Walk through src and tests
for root, dirs, files in os.walk(repo_dir):
    if "src" not in root and "tests" not in root:
        continue
    for file in sorted(files):
        if file.endswith(".npk"):
            filepath = os.path.join(root, file)
            relpath = os.path.relpath(filepath, repo_dir)
            content += f"\n{'='*80}\n"
            content += f"File: {relpath}\n"
            content += f"{'='*80}\n\n"
            with open(filepath, "r") as f:
                content += f.read()
            content += "\n"

# Add build output
content += f"\n{'='*80}\n"
content += "Build Output\n"
content += f"{'='*80}\n\n"

# Run tests and capture output
try:
    result = subprocess.run(
        ["npkbld", "test"],
        cwd=repo_dir,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True
    )
    # Filter out verbose IR GEN lines
    filtered_output = "\n".join(
        line for line in result.stdout.split("\n") 
        if not line.startswith("[DEBUG")
    )
    content += filtered_output
except Exception as e:
    content += str(e)

# Split if necessary
max_size = 900 * 1024
if len(content.encode('utf-8')) <= max_size:
    with open(os.path.join(audit_dir, "compilation.md"), "w") as f:
        f.write(content)
else:
    # simple split
    part = 0
    start = 0
    encoded = content.encode('utf-8')
    while start < len(encoded):
        chunk = encoded[start:start+max_size]
        # ensure we don't split multi-byte characters
        with open(os.path.join(audit_dir, f"compilation_{part}.md"), "wb") as f:
            f.write(chunk)
        start += max_size
        part += 1

print(f"Compilation generated in {audit_dir}, total bytes: {len(content.encode('utf-8'))}")
