package service

import (
	"contentbasedfiltering/database"
	"contentbasedfiltering/model"
	"contentbasedfiltering/util"
	"fmt"
	"strings"
	"time"
)

func ProcessAlgorithm(text string, idUser string) {
	fmt.Println("🔎 on process search and algorithm...")

	saveHistory := model.SaveHistory{
		Created:     time.Now().Format("2006-01-02 15:04:05"),
		Updated:     time.Now().Format("2006-01-02 15:04:05"),
		IdHistory:   util.RandomNumber(20),
		IdUser:      idUser,
		Description: strings.ToLower(text),
	}

	splt := strings.Split(strings.ToLower(strings.TrimSpace(text)), " ")
	initial := true

	isValid, resultProduct, merkProduct, hargaProduct := getAllProduct()
	if !isValid {
		fmt.Println("⛔ no data found")
		initial = false
	}

	filter := filteringProduct(resultProduct, splt)

	// check word
	checkWord := true

	if len(filter) == 0 && !strings.Contains(text, "jt") && !strings.Contains(text, "murah") {
		fmt.Println("⛔ no data found")

		isValid, desc := database.ReadHistory(idUser)
		if isValid {
			fmt.Println("➡️ rekomendasi pencarian terakhir..")
			text = desc
			splt = strings.Split(text, " ")
			checkWord = false
		}
	}

	// found harga
	if initial {
		if isValid := strings.Contains(text, "jt") || strings.Contains(text, "murah"); isValid {
			price := getPrice(splt)
			group := []string{}

			for k, v := range hargaProduct {
				if v >= price && v <= price+1000000 {
					group = append(group, k)
				}
			}

			fmt.Println("harga print")
			// print
			showProduct(group)

			initial = false
		}

		fmt.Println("harga")
	}

	// found merk
	if initial {
		for _, merk := range merkProduct {
			for i := 0; i < len(splt); i++ {
				if strings.Contains(merk, splt[i]) {
					isAvail, resultByMerk := getProductByMerk(merk)

					if !isAvail {
						fmt.Println("no data")
						return
					}

					filter := filteringProduct(resultByMerk, splt)
					// sort
					sorting := sortResult(filter)
					// print
					showProduct(sorting)

					initial = false
				}
			}
		}
		fmt.Println("merk")
	}

	if initial {
		// sort
		sorting := sortResult(filter)
		// print
		showProduct(sorting)
		fmt.Println("print")
	}

	if checkWord {
		// save history
		database.InsertHistory(saveHistory)
	}
}
