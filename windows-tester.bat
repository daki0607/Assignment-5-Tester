@ECHO OFF

ECHO Running all assignment 5 tests
ECHO Running test 1
g++ -pedantic -Wall -Wextra -std=c++17 -o 01_PushPopEmptySize.exe 01_PushPopEmptySize.cpp
01_PushPopEmptySize.exe > 01_generated_output.txt
fc 01_generated_output.txt 01_PushPopEmptySize_output.txt

ECHO Running test 2
g++ -pedantic -Wall -Wextra -std=c++17 -o 02_FirstLast.exe 02_FirstLast.cpp
02_FirstLast.exe > 02_generated_output.txt
fc 02_generated_output.txt 02_FirstLast_output.txt

ECHO Running test 3
g++ -pedantic -Wall -Wextra -std=c++17 -o 03_ClearContains.exe 03_ClearContains.cpp
03_ClearContains.exe > 03_generated_output.txt
fc 03_generated_output.txt 03_ClearContains_output.txt

ECHO Running test 4
g++ -pedantic -Wall -Wextra -std=c++17 -o 04_CompareOperators.exe 04_CompareOperators.cpp
04_CompareOperators.exe > 04_generated_output.txt
fc 04_generated_output.txt 04_CompareOperators_output.txt

ECHO Running test 5
g++ -pedantic -Wall -Wextra -std=c++17 -o 05_ConstructorsAndCopies.exe 05_ConstructorsAndCopies.cpp
05_ConstructorsAndCopies.exe > 05_generated_output.txt
fc 05_generated_output.txt 05_ConstructorsAndCopies_output.txt

ECHO Running test 6
g++ -pedantic -Wall -Wextra -std=c++17 -o 06_DeepCopy.exe 06_DeepCopy.cpp
06_DeepCopy.exe > 06_generated_output.txt
fc 06_generated_output.txt 06_DeepCopy_output.txt

ECHO Running test 7
g++ -pedantic -Wall -Wextra -std=c++17 -o 07_Apply.exe 07_Apply.cpp
07_Apply.exe > 07_generated_output.txt
fc 07_generated_output.txt 07_Apply_output.txt

ECHO Running test 8
g++ -pedantic -Wall -Wextra -std=c++17 -o 08_RemoveWhere.exe 08_RemoveWhere.cpp
08_RemoveWhere.exe > 08_generated_output.txt
fc 08_generated_output.txt 08_RemoveWhere_output.txt

ECHO Running test 9
g++ -pedantic -Wall -Wextra -std=c++17 -o 09_Transform.exe 09_Transform.cpp
09_Transform.exe > 09_generated_output.txt
fc 09_generated_output.txt 09_Transform_output.txt

ECHO Running test 10
g++ -pedantic -Wall -Wextra -std=c++17 -o 10_ListOfLists.exe 10_ListOfLists.cpp
10_ListOfLists.exe > 10_generated_output.txt
fc 10_generated_output.txt 10_ListOfLists_output.txt

PAUSE