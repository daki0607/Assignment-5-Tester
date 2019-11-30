# Assignment-5-Tester
 
Both of these testers compile, run, and compare the output of each program to their expected outputs.

## Compilation

The command used to compile each program is:

(Mac and Linux)
```
g++ -pedantic -Wall -Wextra -std=c++17 -o {filename}.out {filename}.cpp
```
(Windows)
```
g++ -pedantic -Wall -Wextra -std=c++17 -o {filename}.exe {filename}.cpp
```

The `-pedantic`, `-Wall`, and `-Wextra` flags are included to show any/all errors or warnings.

## Execution

When running each program, the generated output is piped to a seperate file.
On Mac and Linux, the script is able to generate a `tests` folder and store the outputs there.
I was not able to figure out the same on windows, so it stores output in the same folder.

(Mac and Linux)
```
./{filename}.out > tests/{test number}_generated_output.txt
```
(Windows)
```
{filename}.exe > {test number}_generated_output.txt
```

## Differences

When a difference is encountered, the system's difference checker will display it.

(Mac and Linux)
```
diff -u tests/{test number}_generated_output.txt {filename}_output.txt
```
(Windows)
```
fc {test number}_generated_output.txt {filename}_output.txt
```

### Example output



