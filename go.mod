module official

require (
	github.com/gin-gonic/gin v1.4.0
	github.com/jinzhu/gorm v1.9.8
	github.com/sirupsen/logrus v1.4.2
)

replace (
	golang.org/x/crypto => github.com/golang/crypto v0.0.0-20190308221718-c2843e01d9a2
	golang.org/x/net => github.com/golang/net v0.0.0-20190503192946-f4e77d36d62c
	golang.org/x/sys => github.com/golang/sys v0.0.0-20190222072716-a9d3bda3a223
	golang.org/x/text => github.com/golang/text v0.3.0
)

go 1.12
