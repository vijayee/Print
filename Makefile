build:
	mkdir -p build
test: build
	mkdir -p build/test
test/liboffs: test Print/test/*.pony
	corral run -- ponyc Print/test -o build/test --debug
test/execute: test/liboffs
	./build/test/test
clean:
	rm -rf build

.PHONY: clean test
