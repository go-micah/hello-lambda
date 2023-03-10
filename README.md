# hello-lambda

A simple hello world function, written in Go and running on Lambda

## References

- [AWS Docs](https://docs.aws.amazon.com/lambda/latest/dg/lambda-golang.html)
- [aws-lambda-go](https://github.com/aws/aws-lambda-go)

## Relevant commands

```bash
go mod init github.com/go-micah/hello-lambda
go mod tidy
GOOS=linux GOARCH=amd64 go build -o .bin/hello main.go
(cd bin && zip -FS hello.zip hello)
```

## Notes

>You can tell the Lambda runtime which handler method to invoke by setting the handler parameter on your function's configuration.

>When you configure a function in Go, the value of the handler setting is the executable file name. For example, using Handler would call the function in the package main of the Handler executable file.

In my case, I used `hello` as the executable, so I had to set this as the handler in the Lambda config.

Invoking from the AWS CLI

```bash
aws lambda invoke --function-name helloLambda --region us-east-1 /dev/stdout
```
