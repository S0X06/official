package main

import(

	// "flag"
  	"official/router"

)

func main() {

	engine := router.InitRouter()
	//设置模式
	// engine.SetMode()
	engine.Run(":8080")

}
