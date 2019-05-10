// Andrew Tanenbaum - starvation incorrect solution
// Java sucks for multithreading, pool object and sht
#define wait(s) atomic { s > 0 -> s-- }
#define waitroom(s) atomic { s < 4 -> s++ }
#define signal(s) s++
#define signalroom(s) s--

#define NUM_PROCS 2

int N = 5
byte fork[5] = {1, 1, 1, 1, 1}
byte room = 0

active[5] proctype P() {
    do
    ::
        printf("Think P%d\n", _pid)
        waitroom(room)
        wait(fork[_pid])
        wait(fork[(_pid + 1) % N])
        printf("Eat P%d\n", _pid)
        signal(fork[_pid])
        signal(fork[(_pid + 1) % N])
        signalroom(room)
    od
    //
    // do
    // :: 
        // printf("P%d NCS 2\n", _pid)
        // printf("P%d NCS 3\n", _pid)
        // wait(s);
        // critical++
        // assert critical <= 1
        // critical--
        // printf("P%d CS 1\n", _pid)
        // printf("P%d CS 2\n", _pid)
        // printf("P%d CS 3\n", _pid)
        // signal(s);
    // od
}