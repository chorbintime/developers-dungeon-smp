import os
import tomllib
import requests
import simplejson.errors as sje
import subprocess
import tqdm

errors = []

for file in tqdm.tqdm(os.listdir("./mods")):
    if not file.endswith(".pw.toml"):
        continue

    with open("./mods/" + file, "r") as f:
        data = tomllib.loads(f.read())
    
    if "update" not in data:
        continue

    if "modrinth" in data["update"]:
        continue

    alg = data["download"]["hash-format"]
    hash = data["download"]["hash"]
    url = f"https://api.modrinth.com/v2/version_file/{hash}?algorithm={alg}"

    try:
        wdata = requests.get(url).json()
        ver_id = wdata["id"]
        proj_id = wdata["project_id"]
        fn = wdata["files"][0]["filename"]

        # print(f"{file} = {proj_id} version {ver_id} ({fn})")

        os.remove("mods/" + file)

        subprocess.run(["packwiz", "refresh"])
        subprocess.run(["packwiz", "mr", "add", "--project-id", proj_id, "--version-id", ver_id, "--yes"])
    except sje.JSONDecodeError:
        errors.append(file)

txt = []

for i in errors:
    txt.append(f"Could not resolve: {i}")

with open("cf_only_maybe.txt", "w") as f:
    f.write("\n".join(txt))
