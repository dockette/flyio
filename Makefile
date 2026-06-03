.PHONY: build test run

build:
	docker build -t dockette/flyio flyio

test:
	docker run --rm dockette/flyio flyctl -v

run:
	docker run -it --rm dockette/flyio sh
