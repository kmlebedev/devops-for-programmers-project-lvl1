install:
	npm ci

server:
	npx nodos server

test: install
	npm -s test

start:
	npm start

build-dev:
	docker build --no-cache -t kmlebedev/devops-for-programmers-project-lvl1:dev -f Dockerfile.production .

build:
	docker build --no-cache -t kmlebedev/devops-for-programmers-project-lvl1 -f Dockerfile .

run: install test server

ci: build-dev
	docker-compose -f docker-compose.yml up --abort-on-container-exit