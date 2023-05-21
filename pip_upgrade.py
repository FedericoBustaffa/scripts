import json
import sys
import subprocess


def upgrade(package):
    subprocess.check_call([sys.executable, "-m", "pip",
                          "install", "--upgrade", package])


if __name__ == "__main__":

    try:
        file = open("/home/federico/scripts/packages.json")
        data = json.load(file)

        for i in data:
            upgrade(i["name"])

        file.close()
    except FileNotFoundError:
        print("All pip packages are up to date")
