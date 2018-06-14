.PHONY: build

build:
	hack/build.sh

dep:
	hack/dep.sh

test:
	go test github.com/dansksupermarked/mariadb-galera-operator/pkg/apis/components/v1alpha1/

testv:
	go test -v github.com/dansksupermarked/mariadb-galera-operator/pkg/apis/components/v1alpha1/

devrelease: build
	docker build -t goblain/mdbc:dev .
	docker push goblain/mdbc:dev
