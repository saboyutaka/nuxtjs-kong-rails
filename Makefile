.DEFAULT_GOAL := help

build: ## build develoment environment
	docker-compose run --rm ruby bundle install
	docker-compose run --rm yarn install

serve:
	docker-compose up -d ruby kong nuxt kong-dashboard

rails: up attach ## Run Serve

up: ## Run web container
	docker-compose up -d ruby

console: ## Run Rails Console
	docker-compose run --rm ruby bundle exec rails c

bundle: ## Run bundle install
	docker-compose run --rm ruby bundle install

attach: ## Attach running web container for binding.pry
	docker attach `docker ps -f name=nkr_ruby -f status=running --format "{{.ID}}"`

yarn-install: ## Run yarn install
	docker-compose run --rm yarn install

yarn-dev: ## Run yarn run dev
	docker-compose run --rm yarn run dev

yarn-build: ## Run yarn build
	docker-compose run --rm yarn run build

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
