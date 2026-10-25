include VERSION

.PHONY: build test run

build:
	docker build -t dockette/flyio flyio

test:
	docker run --rm dockette/flyio flyctl -v

run:
	docker run -it --rm dockette/flyio sh

.PHONY: version
version:
	@echo ${VERSION}

.PHONY: release
release:
	@sed -i.bak "s/^VERSION=.*/VERSION=$$(date -u +%Y.%m.%d)/" VERSION && rm VERSION.bak
	@cat VERSION
