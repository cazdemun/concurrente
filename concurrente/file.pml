// active[5] proctype main(){
//     printf("hello world %d\n", _pid)
// }

// active[5] proctype P(){
//     printf("don't talk to me %d\n", _pid)
// }

// active proctype Bigger(){
//     int a = 5
//     int b = 5 

//     if
//     :: a >= b -> printf("el mayor es A %d\n", a)
//     :: b >= a -> printf("el mayor es B %d\n", b)
//     fi
// }

// active no se puede si quiero imprimir n
// los active se lanzan automatico, si no hay que ser llamados

int n = 0

proctype P(){
    int t
    int i  = 0
    
    do
    :: i < 10 ->
        t = n
        n = t + 1
        i++
    :: else -> break
    od
}

proctype Q(){
    int t
    int i  = 0;
    
    do
    :: i < 10 ->
        t = n
        n = t + 1
        i++
    :: else -> break
    od
}

// init {
//     atomic {
//         run P()
//         run Q()
//     }
//     (_nr_pr == 1) -> printf("n=%d\n", n)
// }

// timeout
// #processes: 5
//                 n = 37
// 530:    proc  4 (Sum:1) file.pml:63 (state 4)
// 530:    proc  3 (Sum:1) file.pml:63 (state 4)
// 530:    proc  2 (Sum:1) file.pml:63 (state 4)
// 530:    proc  1 (Sum:1) file.pml:63 (state 4)
// 530:    proc  0 (Sum:1) file.pml:63 (state 4)
// 15 processes created

active[20] proctype Sum(){
    //printf("Sum %d\n", _pid)
    n = 0
    atomic {
        run P()
        run Q()
    }
    (_nr_pr == _pid + 1) -> printf("n=%d\n", n)|
}