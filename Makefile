lambda: 	
	GOOS=linux GOARCH=amd64 go build -o ./bin/hello main.go
	(cd bin && zip -FS hello.zip hello)