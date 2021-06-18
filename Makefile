PROJECT=prodeej

install: ## Install project
	docker-compose -p $(PROJECT) -f docker-compose.yml up -d

init:
	sh init-neo4j.sh

help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
