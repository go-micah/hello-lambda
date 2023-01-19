lambda: 	
	GOOS=linux GOARCH=amd64 go build -o ./bin/bootstrap main.go
	zip ./bin/lambda-handler.zip ./bin/bootstrap