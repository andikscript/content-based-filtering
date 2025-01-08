package util

import "math/rand"

var number = "0123456789"

func RandomNumber(length int) string {
	sl := make([]byte, length)

	for i := 0; i < length; i++ {
		sl[i] = number[rand.Intn(len(number))]
	}

	return string(sl)
}
