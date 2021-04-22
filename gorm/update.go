package main

import (
	"context"
	"fmt"
	"gorm.io/gorm"
)

type name struct {
	Name string
}

func Logger()  {
	
}
func main() {
	db := gorm.DB{}.DB()
	db.Error
	db.Transaction(func(tx *gorm.DB) error {
		return nil
	})
	gorm.Config{}
	context.WithTimeout()
	gorm.Open()
	db.Model().First().Session().ConnPool.(*PreparedStmtDB)
	//gorm.Model{}
	fmt.Println(&name{Name: "a"})
	row := db.Raw("select name, age, email from users where name = ?", "jinzhu").Row()
	row.Scan(&name, &age, &email)
}
