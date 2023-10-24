clear;make clean;make;make mytests;
echo "\n\n\n === UNIT TESTING === \n\n"
./mytests -t 1
./mytests -t 2
./mytests -t 3
./mytests -t 4
./mytests -t 5
./mytests -t 6
./mytests -t 7
echo "\n\n\n === MEMORY LEAK TESTING === \n\n"
valgrind --tool=memcheck --leak-check=yes --show-reachable=yes ./mytests -t 1
valgrind --tool=memcheck --leak-check=yes --show-reachable=yes ./mytests -t 2
valgrind --tool=memcheck --leak-check=yes --show-reachable=yes ./mytests -t 3
valgrind --tool=memcheck --leak-check=yes --show-reachable=yes ./mytests -t 4
valgrind --tool=memcheck --leak-check=yes --show-reachable=yes ./mytests -t 5
valgrind --tool=memcheck --leak-check=yes --show-reachable=yes ./mytests -t 6
valgrind --tool=memcheck --leak-check=yes --show-reachable=yes ./mytests -t 7
