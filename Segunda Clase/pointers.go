package main

import "fmt"

type Animal struct {
	name string
}

func main() {
	a := 10

	// pointer destruction is handled automatically
	// garbage collector is actually consider a drawback of go, since it can impact perfomance
	ptr := &a
	fmt.Println(a)
	fmt.Println(ptr, *ptr)

	var ptr2 *int
	ptr2 = new(int)
	*ptr2 = 20
	fmt.Println(ptr2, *ptr2)

	var a1 Animal
	a1.name = "Fido"
	a2 := Animal{ "Fido" }

	// if you dont know the order of properties, you can initialize them by specifying its name
	a3 := Animal{ name: "Fido" }
	ptr3 := &a3
	ptr4 := &Animal{ "Michifus" }
	fmt.Println(a1)
	fmt.Println(a2)
	fmt.Println(a3)
	fmt.Println(ptr3, *ptr3)

	// try to print the actual address direction of a pointer to the struct
	fmt.Println(ptr4, *ptr4)
}