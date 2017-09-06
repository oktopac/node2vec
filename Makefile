all: n2vexec

n2vbuild: build/
	docker build -t n2vbuild build/

n2vexec: n2vbuild
	mkdir -p tmp
	docker create --name tmp_n2vbuild n2vbuild bash
	docker cp tmp_n2vbuild:/Snap-4.0/examples/node2vec/node2vec node2vec/node2vec
	docker rm tmp_n2vbuild
	docker build -t node2vec node2vec/
