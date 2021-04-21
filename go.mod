module test4

go 1.16

// 如果某个包在本地有缓存了，就是下载过了，直接引入即可，然后tidy一下
// 如果某个包还没下载过，先把依赖加到mod文件里，然后go mod download 一下
// 用命令创建 手动创建 go.mod 文件 都是一样的
require (
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.3.0
	google.golang.org/api v0.30.0
	google.golang.org/grpc v1.37.0
	google.golang.org/protobuf v1.26.0
	gorm.io/gorm v1.21.8
)

// go env -w GOPROXY=https://goproxy.cn,direct
// google.golang.org/protobuf/cmd/protoc-gen-go
// go install google.golang.org/protobuf/cmd/protoc-gen-go@latest // install 不会添加进 module 需要加版本
// go get google.golang.org/grpc/cmd/protoc-gen-go-grpc //get 会添加进 当前项目 的 module 不需要加版本
// go install  github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway@latest
// go install  github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2@latest
