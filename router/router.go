package router

import(
	"github.com/gin-gonic/gin"
)


func InitRouter() *gin.Engine {

	engine := gin.Default()
	engine.Use(gin.Logger())

	

	return engine
}