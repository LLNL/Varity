import json
import sys

PERFORMANCE_DISCREPANCY = 0.10

def evaluate(resultsFile):
    
    with open(resultsFile) as results_json:
        results = json.load(results_json)
        
        for test_file, result in results.items():
            for input_config, compilers in result.items():
                fastestExecution = None
                isPerformanceDiscrepancy = False 
                isResultDiff = False
                prevResult = None
                for compiler, individualRuns in compilers.items():
                    avgTime = 0
                    for optimizationLevel, individualResult in individualRuns.items():
                        individualRunTime = int(individualResult.split(":")[1])
                        individualRunResult = individualResult.split()[0]
                        if prevResult and prevResult != individualRunResult:
                            isResultDiff = True
                        prevResult = individualRunResult
                        avgTime += individualRunTime
                    avgTime = avgTime / len(individualRuns)
                    if not fastestExecution or avgTime < fastestExecution:
                        fastestExecution = avgTime
                        
                    if (avgTime * PERFORMANCE_DISCREPANCY) >= fastestExecution:
                        print(f"Performance discrepancy: {test_file}, fastest: {fastestExecution}, compiler: {compiler} average time: {avgTime}")
                        isPerformanceDiscrepancy = True
                    

            if isResultDiff:
                print(f"{test_file} has difference between compilers: \n{compilers}")
            if isPerformanceDiscrepancy or isResultDiff:
                print("=" * 50)
                
if __name__ == "__main__":
    resultsFile = sys.argv[1]
    evaluate(resultsFile)