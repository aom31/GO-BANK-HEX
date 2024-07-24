package main

import (
	"fmt"

	"github.com/aom31/golang-dev-bank-hex/storage"
)

func main() {

	db, err := storage.SetupDatabase()
	if err != nil {
		panic(err)
	}

	// customerRepository := repository.NewCustomerRepositoryDB(db)
	// customers, err := customerRepository.GetAll()
	// if err != nil {
	// 	panic(err)
	// }

	fmt.Println(db)
}
