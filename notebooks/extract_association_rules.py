import re
import sys

# This script parse all the files generated from caren2 according with a certain confidence value and writes all the results in the same file
# Example usage:
# -> python3 extract_association_rules.py 1 caren_output_lang.txt caren_output_sort.txt

def parse_file(input_file, output_file, conf_value):
    regex = r"Sup\s+=\s+(?P<sup>\-?(\d+\.?\d*|\d*\.?\d+))\s+Conf\s+=\s+(?P<conf>\-?(\d+\.?\d*|\d*\.?\d+)).*"
    
    with open(input_file, 'r') as file:
        lines = file.readlines()
    
    matched_lines = []
    for line in lines:
        match = re.match(regex, line)
        if match:
            conf = float(match.group("conf"))
            if conf >= conf_value:
                matched_lines.append(line)
    
    with open(output_file, 'a') as file:
        file.writelines(matched_lines)

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("HINT: Please provide the confidence value and at least one input file path.")
        sys.exit(1)
    
    conf_value = float(sys.argv[1])
    output_path = "rules.txt"
    
    for input_path in sys.argv[2:]:
        parse_file(input_path, output_path, conf_value)
