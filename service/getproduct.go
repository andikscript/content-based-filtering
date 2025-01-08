package service

import (
	"contentbasedfiltering/database"
	"contentbasedfiltering/model"
	"fmt"
	"strings"
)

func getProductByMerk(merk string) (bool, []model.ResultProduct) {
	isAvail, data := database.ReadProductByMerk(merk)

	if !isAvail {
		fmt.Println("no data")
		return false, []model.ResultProduct{}
	}

	var result []model.ResultProduct

	for _, v := range data {
		save := fmt.Sprintf("merk %s tipe %s atau type %s %sgb %sgb atau %s/%s %s atau %sMP atau %s Megapixel harga %f",
			v.Merk, v.Type, v.Type, v.Ram, v.Internal, v.Ram, v.Internal, v.Camera, v.Camera, v.Camera, v.Harga)
		each := model.ResultProduct{
			IdProduct:   v.IdProduct,
			Description: strings.ToLower(save),
		}

		result = append(result, each)
	}

	return true, result
}

func getAllProduct() (bool, []model.ResultProduct, []string, map[string]int64) {
	isValid, data := database.ReadProduct()

	if !isValid {
		fmt.Println("no data")
		return false, []model.ResultProduct{}, []string{}, map[string]int64{}
	}

	var result []model.ResultProduct
	merk := []string{}
	maps := map[string]string{}
	harga := map[string]int64{}

	for _, v := range data {
		save := fmt.Sprintf("merk %s tipe %s atau type %s %s %sgb internal %s %sgb atau %s/%s %s atau %sMP atau %s Megapixel",
			v.Merk, v.Type, v.Type, v.Ram, v.Ram, v.Internal, v.Internal, v.Ram, v.Internal, v.Camera, v.Camera, v.Camera)
		each := model.ResultProduct{
			IdProduct:   v.IdProduct,
			Description: strings.ToLower(save),
		}

		result = append(result, each)

		// get merk
		_, ok := maps[v.Merk]
		if !ok {
			maps[strings.ToLower(v.Merk)] = "save"
		}

		// get harga
		harga[v.IdProduct] = v.Harga
	}

	for k, _ := range maps {
		merk = append(merk, k)
	}

	return true, result, merk, harga
}
