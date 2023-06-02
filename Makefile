.PHONY: build
build:
	docker build -t dockette/flyio flyio

.PHONY: run
run:
	docker run -it --rm dockette/flyio sh
