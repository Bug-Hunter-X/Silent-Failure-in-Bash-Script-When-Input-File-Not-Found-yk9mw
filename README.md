# Silent Failure in Bash Script

This repository demonstrates a common error in bash scripting: silent failure when dealing with files that may not exist. The `bug.sh` script attempts to process a file but doesn't handle the case where the file is missing.  The `bugSolution.sh` shows the corrected script with robust error handling.

## Bug

The `bug.sh` script uses `cat` and `awk` to extract data from `data.txt`. If `data.txt` does not exist, the commands fail silently and the script continues with an empty `$output` variable.

## Solution

The `bugSolution.sh` script uses the `-f` option with `test` to verify the file's existence before processing. If the file is not found, an appropriate error message is printed and the script exits with a non-zero status code.