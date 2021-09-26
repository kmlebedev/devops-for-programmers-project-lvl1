install:
	npm ci

server:
	npx nodos server

test:
	npm -s test

start:
	npm start

build-test:
	docker build --no-cache -t kmlebedev/devops-for-programmers-project-lvl1:test -f Dockerfile.production .

build:
	docker build --no-cache -t kmlebedev/devops-for-programmers-project-lvl1 -f Dockerfile .

run: install test server

docker-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit