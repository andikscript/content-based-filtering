package database

import (
	"contentbasedfiltering/model"
	"contentbasedfiltering/util"
)

func ReadHistory(id string) (bool, string) {
	defer util.CatchUp()

	db, err := connectDatabase()
	if err != nil {
		return false, ""
	}
	defer db.Close()

	query := "SELECT * FROM public.history WHERE id_user=$1 ORDER BY updated DESC LIMIT 1"
	rows, err := db.Query(query, id)
	if err != nil {
		return false, ""
	}
	defer rows.Close()

	var result []model.SaveHistory
	for rows.Next() {
		each := model.SaveHistory{}
		err = rows.Scan(&each.Created, &each.Updated, &each.IdHistory, &each.IdUser, &each.Description)

		if err != nil {
			return false, ""
		}

		result = append(result, each)
	}

	if err := rows.Err(); err != nil {
		return false, ""
	}

	if len(result) == 0 {
		return false, ""
	}

	return true, result[0].Description
}
