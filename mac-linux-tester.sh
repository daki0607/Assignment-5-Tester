#!/bin/sh

mkdir -p -- tests

echo "Running all assignment 5 tests"
echo "Running test 1"
g++ -pedantic -Wall -Wextra -std=c++17 -o 01_PushPopEmptySize.out 01_PushPopEmptySize.cpp
./01_PushPopEmptySize.out > tests/01_generated_output.txt
diff -u tests/01_generated_output.txt 01_PushPopEmptySize_output.txt

echo "Running test 2"
g++ -pedantic -Wall -Wextra -std=c++17 -o 02_FirstLast.out 02_FirstLast.cpp
./02_FirstLast.out > tests/02_generated_output.txt
diff -u tests/02_generated_output.txt 02_FirstLast_output.txt

echo "Running test 3"
g++ -pedantic -Wall -Wextra -std=c++17 -o 03_ClearContains.out 03_ClearContains.cpp
./03_ClearContains.out > tests/03_generated_output.txt
diff -u tests/03_generated_output.txt 03_ClearContains_output.txt

echo "Running test 4"
g++ -pedantic -Wall -Wextra -std=c++17 -o 04_CompareOperators.out 04_CompareOperators.cpp
./04_CompareOperators.out > tests/04_generated_output.txt
diff -u tests/04_generated_output.txt 04_CompareOperators_output.txt

echo "Running test 5"
g++ -pedantic -Wall -Wextra -std=c++17 -o 05_ConstructorsAndCopies.out 05_ConstructorsAndCopies.cpp
./05_ConstructorsAndCopies.out > tests/05_generated_output.txt
diff -u tests/05_generated_output.txt 05_ConstructorsAndCopies_output.txt

echo "Running test 6"
g++ -pedantic -Wall -Wextra -std=c++17 -o 06_DeepCopy.out 06_DeepCopy.cpp
./06_DeepCopy.out > tests/06_generated_output.txt
diff -u tests/06_generated_output.txt 06_DeepCopy_output.txt

echo "Running test 7"
g++ -pedantic -Wall -Wextra -std=c++17 -o 07_Apply.out 07_Apply.cpp
./07_Apply.out > tests/07_generated_output.txt
diff -u tests/07_generated_output.txt 07_Apply_output.txt

echo "Running test 8"
g++ -pedantic -Wall -Wextra -std=c++17 -o 08_RemoveWhere.out 08_RemoveWhere.cpp
./08_RemoveWhere.out > tests/08_generated_output.txt
diff -u tests/08_generated_output.txt 08_RemoveWhere_output.txt

echo "Running test 9"
g++ -pedantic -Wall -Wextra -std=c++17 -o 09_Transform.out 09_Transform.cpp
./09_Transform.out > tests/09_generated_output.txt
diff -u tests/09_generated_output.txt 09_Transform_output.txt

echo "Running test 10"
g++ -pedantic -Wall -Wextra -std=c++17 -o 10_ListOfLists.out 10_ListOfLists.cpp
./10_ListOfLists.out > tests/10_generated_output.txt
diff -u tests/10_generated_output.txt 10_ListOfLists_output.txt

echo "Press any key to continue ..."
read
