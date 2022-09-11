IMAGE_NAME = ghcr.io/hoangweb/rpboard_heroku:latest
VERSION = latest
FILE = Dockerfile

image:
	docker build -f $(FILE) -t $(IMAGE_NAME):$(VERSION) .

push:
	docker push $(IMAGE_NAME):$(VERSION)

run:
	docker run -e SITE_URL="" -e SITE_TOKEN="" -e PORT=8080 --rm --init -it $(IMAGE_NAME):$(VERSION)

all: image push