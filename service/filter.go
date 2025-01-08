package service

import (
	"contentbasedfiltering/model"
	"strings"
)

func filteringProduct(resultProduct []model.ResultProduct, splt []string) map[string]int {
	filterProduct := map[string]int{}

	for _, product := range resultProduct {
		for i := 0; i < len(splt); i++ {
			if strings.Contains(product.Description, splt[i]) {
				count := strings.Count(product.Description, splt[i])

				val, isExist := filterProduct[product.IdProduct]
				if !isExist {
					filterProduct[product.IdProduct] = count
				} else {
					filterProduct[product.IdProduct] = val + count
				}
			}
		}
	}

	return filterProduct
}
