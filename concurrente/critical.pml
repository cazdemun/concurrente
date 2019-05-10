// #define NUM_PROCS = 2

// byte turn = 0
// byte critical = 0

// active[NUM_PROCS] proctype P() {
//     do
//     :: true ->
//         (turn == _pid) ->
// }

byte critical = 0
bool want[NUM_PROCS] // intialized on false

active proctype P() {
    pid qpid = (_pid + 1) % NUM_PROCS
    do
    :: true ->
        (!want[qpid]) ->
        want[_pid] = true
        critical++
        assert(criticial <= 1)
        criticial--
        want[_pid] = false


    od
}