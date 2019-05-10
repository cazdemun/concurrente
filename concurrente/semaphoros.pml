// Andrew Tanenbaum - starvation incorrect solution
// Java sucks for multithreading, pool object and sht
#define wait(s) atomic { s > 0 -> s-- }
#define signal(s) s++

#define NUM_PROCS 2

byte s = 1
byte critical = 0

active[NUM_PROCS] proctype P() {
    do
    :: 
        printf("P%d NCS 1\n", _pid)
        printf("P%d NCS 2\n", _pid)
        printf("P%d NCS 3\n", _pid)
        wait(s);
        critical++
        assert critical <= 1
        critical--
        printf("P%d CS 1\n", _pid)
        printf("P%d CS 2\n", _pid)
        printf("P%d CS 3\n", _pid)
        signal(s);
    od
}