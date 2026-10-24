VERSION:=$(shell cat VERSION)

.PHONY: build test run version release

build:
	docker build -t dockette/flyio flyio

test:
	docker run --rm dockette/flyio flyctl -v

run:
	docker run -it --rm dockette/flyio sh

version:
	@echo ${VERSION}

release:
	@date -u +%Y.%m.%d > VERSION
	@echo "VERSION: ${VERSION} -> $$(cat VERSION)"
	@echo "next: git commit -am \"Release: $$(cat VERSION)\" && git push"
