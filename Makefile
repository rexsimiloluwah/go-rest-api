build: 
	go build

build-and-run: 
	go build && ./go-rest-api

test: 
	go test 

build-docker:
	sudo docker build -t go-rest-api-dev . 
	
run-docker: 
	sudo docker run -p 5050:5050 go-rest-api-dev 

run-and-build-docker-compose:
	sudo docker-compose up --build

run-docker-compose: 
	sudo docker-compose up

