package util

import "fmt"

func CatchUp() {
	if err := recover(); err != nil {
		fmt.Println(fmt.Sprintf("error internal server or '%v'", err))
	}
}
