package repository

import "time"

type Customers struct {
	CustomerID  int       `gorm:"column:customer_id"`
	Name        string    `gorm:"column:name"`
	DateOfBirth time.Time `gorm:"column:date_of_birth"`
	City        string    `gorm:"column:city"`
	ZipCode     int       `gorm:"column:zip_code"`
	Status      bool      `gorm:"column:status"`
}

func (t Customers) TableName() string {
	return "customers"
}

type CustomerRepository interface {
	GetAll() ([]Customers, error)
	GetById(id int) (*Customers, error)
}
