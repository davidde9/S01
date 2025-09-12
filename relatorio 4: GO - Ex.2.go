package main

import "fmt"

func main() {
	var numero int

	fmt.Println("Digite um número: ")
	fmt.Scanln(&numero)

	switch (numero % 2) {
	case 0:
		fmt.Println("O número é par")
	case 1:
		fmt.Println("O número é ímpar")
	}
}
