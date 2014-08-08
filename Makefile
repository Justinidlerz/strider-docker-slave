rmi:
	docker rmi keyvanfatehi/strider-docker-slave 2>&1 > /dev/null

build:
	sudo docker build -t keyvanfatehi/strider-docker-slave .

test: build
	sudo bash ./test.sh

publish:
	docker push keyvanfatehi/strider-docker-slave
