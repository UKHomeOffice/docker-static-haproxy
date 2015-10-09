NAME=static-haproxy
AUTHOR=ukhomeofficedigital

.PHONY: build test dryrun push

default: build

build:
	sudo docker build -t ${AUTHOR}/${NAME} .

test:
	sudo docker run -ti --rm --net=host ${AUTHOR}/${NAME} $@

dryrun:
	sudo docker run -ti --rm --net=host ${AUTHOR}/${NAME} --dryrun -p 127.0.0.1:6443,10.50.10.200:6443,10.50.10.201:6443
