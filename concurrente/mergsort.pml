#define wait(s) atomic { s > 0 -> s-- }
#define signal(s) s++

int A[10] = {10, 3, 4, 2, 5, 1, 9, 8, 7, 6}
int i

byte s1 = 1
byte s2 = 1

active proctype sort1() {
    printf("s1\n")

    signal(s1)
}

active proctype sort2() {

    printf("s2\n")
    signal(s2) 

}

active proctype merge() {

    wait(s1)
    wait(s2)

    printf("merge\n")

    int half = 5
    int l = 0
    int r = 0

    int temp[10]
    int cont = 0
    do
	:: l < half && r < half ->
        if 
            :: A[l] <= A[r + half] ->
                temp[cont] = A[l]
                l++
            :: A[l] > A[r + half] ->
                temp[cont] = A[r + half]
                r++
        fi
        cont++
	:: else ->
		break
	od

    printf("l %d, r %d, cont %d\n ", l, r, cont)

    if
    :: l == 0 ->
        for (i : 0 .. 4 - l) {
            temp[cont + i] = A[i]
        }
    :: r == 0 ->
        for (i : 0 .. 4 - r) {
            temp[cont + i] = A[i]
        }
    fi

    for (i in temp) {
        printf("%d", temp[i])
    }

    for (i in A) {
        A[i] = temp[i]
    }
    printf("\n")

    for (i in A) {
        printf("%d", A[i])
    }
    printf("\n")

}
