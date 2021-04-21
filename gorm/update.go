package main

import (
	"context"
	"fmt"
	"gorm.io/gorm"
)

type name struct {
	Name string
}

func main() {
	gorm.Config{}
	context.WithTimeout()
	gorm.Open()
	gorm.DB{}.Model().First().Session().ConnPool.(*PreparedStmtDB)
	//gorm.Model{}
	fmt.Println(&name{Name: "a"})
	row := db.Raw("select name, age, email from users where name = ?", "jinzhu").Row()
	row.Scan(&name, &age, &email)
}
