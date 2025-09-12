package main

import "fmt"

func fibonacci(n int) {
	a := 0
	b := 1
	for i := 0; i < n; i++ {
		fmt.Println(a)
		temp := a
		a = b
		b = temp + b
	}
}

func main() {
	var n int

	fmt.Println("Digite quantos números da sequência de Fibonacci você deseja: ")
	fmt.Scanln(&n)

	fibonacci(n)
	
}
