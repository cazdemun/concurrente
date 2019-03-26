package main

import (
	"fmt"
	"time"
	"math/rand"
)

var n int = 0

func pausita() {
	v := rand.Intn(5) + 10
	time.Sleep(time.Duration(v)*time.Millisecond)
}

func P() {
	var temp int
	for i := 0; i < 10; i++ {
		pausita()
		temp = n
		pausita()
		n = temp + 1
	}
}

func Q() {
	var temp int
	for i := 0; i < 10; i++ {
		pausita()
		temp = n
		pausita()
		n = temp + 1
	}
}

func main() {
    fmt.Println(n)
}
