
import sys
import os

def main():

    rootDir = sys.argv[1]

    reports = []
    # Walk on the directory tree
    for dirName, subdirList, fileList in os.walk(rootDir):
        for fname in fileList:
            if fname.endswith('results.json'):
                fullPath = dirName+"/"+fname
                reports.append(fullPath)
                print("path:", fullPath)

    finalReport  = []
    for i in range(len(reports)):
        rep = reports[i]
        fp = open(rep, 'r')
        lines = fp.readlines()
        if i != len(reports)-1:
            del(lines[-1:])
            lines[-1:] = "  },\n"
            if i != 0:
                del(lines[0])

            finalReport.extend(lines)
        else:
            print("...in final report", lines[0])
            del(lines[0])
            finalReport.extend(lines)
        fp.close()

    print("Saving final results json...")
    f = open('./all-results.json', 'w')
    for l in finalReport:
        f.write(l)
    f.close()

main()
