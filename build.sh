#!/bin/bash

emcc hello.cpp -o hello/hello.html
emcc -Os hello.cpp -o hello/hello-Os.html
gzip -fk hello/hello-Os.wasm

emcc cube.cpp -o cube/cube.html
emcc -Os cube.cpp -o cube/cube-Os.html
gzip -fk cube/cube-Os.wasm

# Add file to virtual filesystem
emcc file.cpp -o file/file.html --preload-file file/file.txt
emcc -Os file.cpp -o file/file-Os.html --preload-file file/file.txt
gzip -fk file/file-Os.wasm
# Embed file in the wasm, adding it to the virtual filesystem
emcc file.cpp -o file/embed.html --embed-file file/file.txt
emcc -Os file.cpp -o file/embed-Os.html --embed-file file/file.txt
gzip -fk file/embed-Os.wasm
