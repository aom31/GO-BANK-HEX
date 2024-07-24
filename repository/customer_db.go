package repository

import "gorm.io/gorm"

type customerRepositoryDB struct {
	db *gorm.DB
}

// for new instance of struct
func NewCustomerRepositoryDB(db *gorm.DB) CustomerRepository {
	return customerRepositoryDB{
		db: db,
	}
}

// GetAll implements CustomerRepository.
func (repo customerRepositoryDB) GetAll() ([]Customers, error) {

	result := []Customers{}

	gormResult := repo.db.Find(&result)
	if gormResult.Error != nil {
		return nil, gormResult.Error
	}

	return result, nil
}

// GetById implements CustomerRepository.
func (repo customerRepositoryDB) GetById(id int) (*Customers, error) {
	panic("unimplemented")
}
