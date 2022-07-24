.PHONY: help

CMD ?= ''

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

start:  ## Start the application
	@echo "Starting the application"
	@docker-compose up -d

restart:  ## Restart the application
	@echo "Restarting the application"
	@docker-compose restart

stop:  ## Stop the application
	@echo "Stopping the application"
	@docker-compose down

status:  ## Status the application
	@echo "Showing the status for the application"
	@docker-compose ps

logs:	## Show the all Logs from the application
	@echo "Showing all logs for every container"
	@docker-compose logs -f --tail="50"

cli_api:  ## Enter to container console from API
	@echo "Entering to container console from API"
	@docker exec -ti api bash

cli_web:  ## Enter to container console from WEB
	@echo "Entering to container console from WEB"
	@docker exec -ti web sh

cli_db:  ## Enter to container console from MySQL
	@echo "Entering to container console from MySQL"
	@docker exec -ti mysql bash