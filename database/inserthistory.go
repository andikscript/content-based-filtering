package database

import (
	"contentbasedfiltering/model"
	"contentbasedfiltering/util"
)

func InsertHistory(saveHistory model.SaveHistory) {
	defer util.CatchUp()

	db, err := connectDatabase()
	if err != nil {
		return
	}
	defer db.Close()

	query := "INSERT INTO public.history values($1,$2,$3,$4,$5)"
	args := []interface{}{
		saveHistory.Created,
		saveHistory.Updated,
		saveHistory.IdHistory,
		saveHistory.IdUser,
		saveHistory.Description,
	}

	_, err = db.Exec(query, args...)
	if err != nil {
		return
	}
}
