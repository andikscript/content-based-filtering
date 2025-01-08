package service

import (
	"fmt"
	"strconv"
	"strings"
)

func getPrice(splt []string) int64 {
	var price int64

	for i := 0; i < len(splt); i++ {
		if strings.Contains(splt[i], "jt") {
			if splt[i][:1] == "j" {
				price, _ = strconv.ParseInt(fmt.Sprintf("%s000000", splt[i-1]), 10, 64)
			} else {
				price, _ = strconv.ParseInt(fmt.Sprintf("%s000000", splt[i][:1]), 10, 64)
			}
		}

		if strings.Contains(splt[i], "murah") {
			price = 0
		}
	}

	return price
}
