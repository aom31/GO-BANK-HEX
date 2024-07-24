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


# Construct the DSN from environment variables
DB_DSN=postgres://$(DB_USER):$(DB_PASSWORD)@$(DB_HOST):$(DB_PORT)/$(DB_NAME)?sslmode=disable

nameMigrateFile = "v1_add_table_customers"
create-migrate-file:
	migrate create -ext sql -dir storage/migrations -seq $(nameMigrateFile)

dev-up:
	migrate -database $(DB_DSN) -path storage/migrations up  

version_down_step =1
dev-down:
	migrate -database $(DB_DSN) -path storage/migrations down  $(version_down_step)

version = 1
force-migrate-version:
	migrate -path storage/migrations -database $(DB_DSN) force $(version)
