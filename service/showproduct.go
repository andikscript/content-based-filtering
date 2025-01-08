package service

import (
	"contentbasedfiltering/database"
	"fmt"
	"sort"
)

func showProduct(maps []string) {
	if len(maps) == 0 {
		return
	}

	for _, v := range maps {
		isValid, product := database.ReadProductById(v)

		if isValid {
			pr := fmt.Sprintf("📲 %s 📍 Tipe %s 📀 RAM %sGB 💾 Internal %sGB 📸 Kamera Utama %sMP dibandrol dengan harga 💸Rp.%d",
				product.Merk, product.Type, product.Ram, product.Internal, product.Camera, product.Harga)
			fmt.Println(pr)
		}
	}
}

func sortResult(maps map[string]int) []string {
	var ss []kv
	for k, v := range maps {
		ss = append(ss, kv{k, v})
	}

	sort.Slice(ss, func(i, j int) bool {
		return ss[i].Value > ss[j].Value
	})

	keys := []string{}
	for _, kv := range ss {
		keys = append(keys, kv.Key)
	}

	return keys
}

type kv struct {
	Key   string
	Value int
}
