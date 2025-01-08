package database

import (
	"contentbasedfiltering/model"
	"contentbasedfiltering/util"
)

func ReadProduct() (bool, []model.QueryProduct) {
	defer util.CatchUp()

	db, err := connectDatabase()
	if err != nil {
		return false, []model.QueryProduct{}
	}
	defer db.Close()

	query := "SELECT * FROM public.produk"
	rows, err := db.Query(query)
	if err != nil {
		return false, []model.QueryProduct{}
	}
	defer rows.Close()

	var result []model.QueryProduct
	for rows.Next() {
		each := model.QueryProduct{}
		err = rows.Scan(&each.Created, &each.Updated, &each.IdProduct, &each.Merk,
			&each.Type, &each.Ram, &each.Internal, &each.Camera, &each.Harga)

		if err != nil {
			return false, []model.QueryProduct{}
		}

		result = append(result, each)
	}

	if err := rows.Err(); err != nil {
		return false, []model.QueryProduct{}
	}

	return true, result
}

func ReadProductByMerk(merk string) (bool, []model.QueryProduct) {
	defer util.CatchUp()

	db, err := connectDatabase()
	if err != nil {
		return false, []model.QueryProduct{}
	}
	defer db.Close()

	query := "SELECT * FROM public.produk WHERE LOWER(merk)=LOWER($1)"
	rows, err := db.Query(query, merk)
	if err != nil {
		return false, []model.QueryProduct{}
	}
	defer rows.Close()

	var result []model.QueryProduct
	for rows.Next() {
		each := model.QueryProduct{}
		err = rows.Scan(&each.Created, &each.Updated, &each.IdProduct, &each.Merk,
			&each.Type, &each.Ram, &each.Internal, &each.Camera, &each.Harga)

		if err != nil {
			return false, []model.QueryProduct{}
		}

		result = append(result, each)
	}

	if err := rows.Err(); err != nil {
		return false, []model.QueryProduct{}
	}

	return true, result
}

func ReadProductById(id string) (bool, model.QueryProduct) {
	defer util.CatchUp()

	db, err := connectDatabase()
	if err != nil {
		return false, model.QueryProduct{}
	}
	defer db.Close()

	query := "SELECT * FROM public.produk WHERE id_produk=$1"
	rows, err := db.Query(query, id)
	if err != nil {
		return false, model.QueryProduct{}
	}
	defer rows.Close()

	var result []model.QueryProduct
	for rows.Next() {
		each := model.QueryProduct{}
		err = rows.Scan(&each.Created, &each.Updated, &each.IdProduct, &each.Merk,
			&each.Type, &each.Ram, &each.Internal, &each.Camera, &each.Harga)

		if err != nil {
			return false, model.QueryProduct{}
		}

		result = append(result, each)
	}

	if err := rows.Err(); err != nil {
		return false, model.QueryProduct{}
	}

	return true, result[0]
}
