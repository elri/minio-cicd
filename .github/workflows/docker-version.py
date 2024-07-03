#!/usr/bin/env python3
import sys
import json
import argparse
import urllib.request

# Fetch the latest commit for given ref, ref can be branch or tag name
# if no ref is given (or if it isn't in semvers form), the latest tag and its commit is fetched

parser = argparse.ArgumentParser()
parser.add_argument("ref", default="latest", nargs='?')
args = parser.parse_args()

tags = urllib.request.urlopen("https://api.github.com/repos/minio/minio/tags").read()
tags = json.loads(tags)

# Version
if args.ref[0] == "v":
    version = args.ref
else:
    latest = urllib.request.urlopen(f"https://api.github.com/repos/minio/minio/releases/{args.ref}")
    latest = json.load(latest)
    version = latest["tag_name"]

print("MISP_VERSION={}".format(version))
