# docker-gomysql
just the minimum to compile and execute golang applications using the go-sql driver

Example (with a multistage build):

	FROM dystroy/gomysql:latest as builder

	COPY ./go/src/myapp/ /go/src/myapp/

	RUN go install myapp

	FROM alpine:3.7
	COPY --from=builder /go/bin/myapp /myapp

	ENTRYPOINT ["./myapp"]

