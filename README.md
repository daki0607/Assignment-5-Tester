# Assignment-5-Tester
 
Both of these testers compile, run, and compare the output of each program to their expected outputs.
On Mac and Linux, you may need to give the script permission to run using:
```
chmod +x mac-linux-tester.sh
```
On Windows however, it is annoying to run from the terminal, so double-click the file itself.

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
Stars `*` are assigned to the first file (the generated output) and Dashes `-` are assigned to the second file (the expected output).
+ A `!` in front of a line means part of the line differs between the files.
+ A `+` in front of a line means this line should be added to the generated output to match the expected output.
+ A `-` in front of a line means this line should be removed from the generated output to match the expected output.

(Windows)
```
fc {test number}_generated_output.txt {filename}_output.txt
```

### Example output

(Mac and Linux: Test Program 2 with part of line missing)
```
*** tests/02_generated_output.txt       2019-11-30 11:31:48.000000000 -0800
--- 02_FirstLast_output.txt     2019-11-29 23:47:20.000000000 -0800
***************
*** 1,6 ****
  Testing first() and last() with modifications
  First: Grapefruit Last: Pineapple
! First: Lime Last: 
  Testing const first() and last():
  First: Lime Last: Lemon
  Testing first() and last() after list manipulation
--- 1,6 ----
  Testing first() and last() with modifications
  First: Grapefruit Last: Pineapple
! First: Lime Last: Lemon
  Testing const first() and last():
  First: Lime Last: Lemon
  Testing first() and last() after list manipulation
```
(Windows: Test Program 2 with part of line missing)
```
Comparing files 02_generated_output.txt and 02_FIRSTLAST_OUTPUT.TXT
***** 02_generated_output.txt
First: Grapefruit Last: Pineapple
First: Lime Last: 
Testing const first() and last():
***** 02_FIRSTLAST_OUTPUT.TXT
First: Grapefruit Last: Pineapple
First: Lime Last: Lemon
Testing const first() and last():
*****
```

(Mac and Linux: Test Program 3 with extra lines and lines missing)
```
*** tests/03_generated_output.txt       2019-11-30 11:39:18.000000000 -0800
--- 03_ClearContains_output.txt 2019-11-29 23:47:20.000000000 -0800
***************
*** 2,7 ****
--- 2,8 ----
  L contains "Raspberry"
  L contains "Grapefruit"
  L contains "Orange"
+ L does not contain "Pomegranate"
  
  Part 2
  L contains "Raspberry"
***************
*** 15,18 ****
  
  Part 4
  L contains "Apple"
- L contains "Apple"
--- 16,18 ----
```
(Windows: Test Program 3 with extra lines and lines missing)
```
Comparing files 03_generated_output.txt and 03_CLEARCONTAINS_OUTPUT.TXT
***** 03_generated_output.txt
L contains "Orange"

***** 03_CLEARCONTAINS_OUTPUT.TXT
L contains "Orange"
L does not contain "Pomegranate"

*****

***** 03_generated_output.txt
L contains "Apple"
***** 03_CLEARCONTAINS_OUTPUT.TXT
*****
```

(Mac and Linux: Test Program 4 with correct output)
```
```
(The files were the same, so `diff` didn't output anything.)

(Windows: Test Program 4 with correct output)
```
Comparing files 04_generated_output.txt and 04_COMPAREOPERATORS_OUTPUT.TXT
FC: no differences encountered
```

## Thanks!
Hope this helps streamline the process a little.
