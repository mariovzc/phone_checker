PACKAGE_NAME=ruby_api
PROJECT_FOLDER=.
GIT_DIR=$(shell pwd)
build:
	docker build -t $(PACKAGE_NAME) .

shell:
	docker run -it --rm \
	-v $(GIT_DIR):/app \
	-w /app/$(PROJECT_FOLDER) \
	-p 3000:3000 \
	--entrypoint=/bin/ash $(PACKAGE_NAME)