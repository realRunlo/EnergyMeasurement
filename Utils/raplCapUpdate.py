import re
import sys


# Iterate over the input files
for input_file in sys.argv[2:]:

    with open(input_file, 'r') as f:
        data = f.read()

    data = re.sub(r'#define WHATTSCAP .*', f'#define WHATTSCAP {int(sys.argv[1])}', data)
    # Write the updated file
    with open(input_file, 'w') as f:
        f.write(data)