
FROM golang:1.9-alpine

# needed to build go programs
RUN apk add --no-cache git mercurial

RUN go get github.com/go-sql-driver/mysql

