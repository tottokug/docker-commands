VERSION = 0.8.13
ORGANIZATION=commands
REPOSITORY=docker-tag-search

all: build
  
build: Dockerfile
	docker build -t ${ORGANIZATION}/${REPOSITORY}:${VERSION} .

push:
	#docker push ${ORGANIZATION}/${REPOSITORY}:${VERSION}
	git add Dockerfile
	git push origin ${VERSION}

shell:
	docker run --name ${REPOSITORY} -it --rm  ${ORGANIZATION}/${REPOSITORY}:${VERSION} /bin/sh

run:
	docker run --name ${REPOSITORY} --rm ${ORGANIZATION}/${REPOSITORY}:${VERSION} 

release:
	#
	
