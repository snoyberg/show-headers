.PHONY: docker

default: docker

Main: Main.hs
	stack --resolver lts-15.7 ghc --package warp --package wai-extra Main.hs

docker: Main
	docker build . --tag snoyberg/show-headers
	docker push snoyberg/show-headers
