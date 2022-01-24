# syntax=docker/dockerfile:1

FROM golang:1.16-alpine

RUN mkdir /app 
WORKDIR /app 

COPY go.mod ./
COPY go.sum ./

RUN go mod download 
COPY ./ ./

RUN go get github.com/githubnemo/CompileDaemon
EXPOSE 5050

ENTRYPOINT CompileDaemon --build="go build -mod=readonly main.go" --command=./main

