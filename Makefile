include sample.env
export

db-postgres:
	docker compose --env-file sample.env up -d postgres
	@echo "starting postgres..."
	sleep 2

migration-postgres:
	docker run --rm -v ${DATABASE_PATH}/migrations/postgres:/migrations --network ${NETWORK_NAME} migrate/migrate -database ${PSQL_CONN} -path=/migrations up 

postgres: db-postgres migration-postgres

clean:
	docker compose down
	docker volume rm tds-database_tdsdb