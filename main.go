package main

import (
	"bufio"
	"contentbasedfiltering/model"
	"contentbasedfiltering/service"
	"fmt"
	"os"
	"time"
)

func main() {
	//service.ProcessAlgorithm("infinix Hot 50 5G ram 8gb internal 256gb camera 50mp", "1")
	//service.ProcessAlgorithm("hp realme", "1")

	mainHandler()
}

func mainHandler() {
	var username string
	var password string

	fmt.Println("______________________________________________________________________")
	fmt.Println(" 🎯SISTEM PENDETEKSI PREFERENSI MENGGUNAKAN CONTENT-BASED FILTERING🎯")
	fmt.Println("______________________________________________________________________")

outerloop:
	for {
		fmt.Print("🔐 Enter username: ")
		fmt.Scanln(&username)
		fmt.Print("🔐 Enter password: ")
		fmt.Scanln(&password)

		isValid, idUser := service.AuthUser(model.User{username, password})

		if !isValid {
			fmt.Println("⛔ Invalid username or password !!!")
			fmt.Println("______________________________________________________________________")
		} else {
			fmt.Println("✅ Successfully login !!!")
			loops := true
			for loops {
				reader := bufio.NewScanner(os.Stdin)
				fmt.Print("➡️ Input rekomendasi (enter q for exit) : ")
				reader.Scan()
				text := reader.Text()

				if text == "q" {
					time.Sleep(time.Millisecond * 300)
					fmt.Print("👋")
					time.Sleep(time.Millisecond * 300)
					fmt.Print("👋")
					time.Sleep(time.Millisecond * 300)
					fmt.Print("👋")
					time.Sleep(time.Millisecond * 500)
					fmt.Print(" Bye !!")
					time.Sleep(time.Millisecond * 1000)

					loops = false
					break outerloop
				}

				// process
				service.ProcessAlgorithm(text, idUser)

				fmt.Println("______________________________________________________________________")

			}
		}
	}
}
