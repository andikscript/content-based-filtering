package database

import (
	"database/sql"
	"fmt"
)

import _ "github.com/lib/pq"

func connectDatabase() (*sql.DB, error) {
	psqlInfo := fmt.Sprintf("host=%s port=%s user=%s password=%s dbname=%s sslmode=disable",
		"localhost", "5432", "postgres", "postgres", "content-based")

	db, err := sql.Open("postgres", psqlInfo)
	if err != nil {
		fmt.Println(fmt.Sprintf("error connecting to database or '%v'", err.Error()))
		return nil, err
	}

	return db, nil
}
