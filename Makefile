build:
	docker build -t multi-stage-build:latest .
	docker images multi-stage-build:latest
# REPOSITORY          TAG       IMAGE ID       CREATED              SIZE
# multi-stage-build   latest    b24cc83c25f2   About a minute ago   7.39MB

run:
	docker run --rm -it multi-stage-build:latest
