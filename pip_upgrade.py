import json
import sys
import subprocess

def upgrade(package):
    subprocess.check_call([sys.executable, "-m", "pip", "install", "--upgrade", package])
    print(f"{package} upgraded")


if __name__ == "__main__":

    file = open("packages.json")
    data = json.load(file)

    for i in data:
        upgrade(i["name"])

    file.close()

