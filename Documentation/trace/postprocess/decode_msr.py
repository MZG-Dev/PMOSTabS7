#!/usr/bin/python3
# add symbolic names to read_msr / write_msr in trace
# decode_msr msr-index.h < trace
import sys
import re
import os

# Pfad zur msr-index.h Datei, wenn keine Argumente übergeben werden
default_path = "msr-index.h"

msrs = dict()

file_path = sys.argv[1] if len(sys.argv) > 1 else default_path

# Überprüfen, ob die Datei existiert
if not os.path.isfile(file_path):
    print(f"File not found: {file_path}")
    sys.exit(1)

with open(file_path, "r") as f:
    for line in f:
        match = re.match(r'#define (MSR_\w+)\s+(0x[0-9a-fA-F]+)', line)
        if match:
            msrs[int(match.group(2), 16)] = match.group(1)

extra_ranges = (
    ("MSR_LASTBRANCH_%d_FROM_IP", 0x680, 0x69F),
    ("MSR_LASTBRANCH_%d_TO_IP", 0x6C0, 0x6DF),
    ("LBR_INFO_%d", 0xdc0, 0xddf),
)

for line in sys.stdin:
    match = re.search(r'(read|write)_msr:\s+([0-9a-f]+)', line)
    if match:
        r = None
        num = int(match.group(2), 16)
        if num in msrs:
            r = msrs[num]
        else:
            for er in extra_ranges:
                if er[1] <= num <= er[2]:
                    r = er[0] % (num - er[1])
                    break
        if r:
            line = line.replace(" " + match.group(2), " " + r + "(" + match.group(2) + ")")
    print(line, end='')
