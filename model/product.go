package model

type QueryProduct struct {
	Created   string
	Updated   string
	IdProduct string
	Merk      string
	Type      string
	Ram       string
	Internal  string
	Camera    string
	Harga     int64
}

type ResultProduct struct {
	IdProduct   string
	Description string
}
