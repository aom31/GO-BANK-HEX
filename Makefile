export DB_HOST=127.0.0.1
export DB_USER=user123
export DB_PASSWORD=password123
export DB_NAME= aomdevlocal
export DB_PORT= 8000

run-db-local:
	@cd ./config && docker-compose up


stop-db-local:
	@cd ./config && docker-compose down

run-go:
	go run cmd/main.go