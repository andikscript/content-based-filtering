package database

import (
	"contentbasedfiltering/model"
	"contentbasedfiltering/util"
	"fmt"
)

func ReadUser(user model.User) (bool, model.User) {
	defer util.CatchUp()

	db, err := connectDatabase()
	if err != nil {
		return false, model.User{"", ""}
	}
	defer db.Close()

	query := fmt.Sprintf("SELECT * FROM public.user WHERE username='%s'", user.Username)
	rows, err := db.Query(query)
	if err != nil {
		return false, model.User{"", ""}
	}
	defer rows.Close()

	var result []model.ResultUser
	for rows.Next() {
		each := model.ResultUser{}
		err = rows.Scan(&each.Created, &each.Updated, &each.Username, &each.Password)
		if err != nil {
			fmt.Println("error when append data or ", err.Error())
			return false, model.User{"", ""}
		}
		result = append(result, each)
	}

	if err := rows.Err(); err != nil {
		fmt.Println("error when looping data or ", err.Error())
		return false, model.User{"", ""}
	}

	if len(result) == 0 {
		return false, model.User{"", ""}
	}

	return true, model.User{result[0].Username, result[0].Password}
}
