package main

import (
	"fmt"
	"time"
)

var n int = 0

func pausita() {
	
}

func P() {
	var temp int
	for i := 0; i < 10; i++ {
		temp = n
		n = temp + 1
	}
}

func Q() {
	var temp int
	for i := 0; i < 10; i++ {
		temp = n
		n = temp + 1
	}
}

func main() {
	go P()
	go Q()
	time.Sleep(100*time.Millisecond)
    fmt.Println(n)
}

