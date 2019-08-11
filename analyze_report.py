import json
import sys

def main():
    fileName = sys.argv[1]
    with open(fileName) as json_file:
        data = json.load(json_file)
        for k in data.keys():
            for input in data[k].keys():
                r = []
                for comp in data[k][input].keys():
                    for op in data[k][input][comp].keys():
                        r.append(data[k][input][comp][op])
                #print(r)
                if len(set(r)) == 1:
                    print("---> Same!")
                else:
                    print("XXXXXXXXXXXXXXXXXXXXXXXXX")
main()
