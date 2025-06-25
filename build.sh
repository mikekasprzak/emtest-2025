#!/bin/bash

emcc hello.cpp -o hello/hello.html
emcc -O2 hello.cpp -o hello/hello-o2.html

emcc cube.cpp -o cube/cube.html
emcc -O2 cube.cpp -o cube/cube-o2.html

# Add file to virtual filesystem
emcc file.cpp -o file/file.html --preload-file file/file.txt
emcc -O2 file.cpp -o file/file-o2.html --preload-file file/file.txt
# Embed file in the wasm, adding it to the virtual filesystem
emcc file.cpp -o file/embed.html --embed-file file/file.txt
emcc -O2 file.cpp -o file/embed-o2.html --embed-file file/file.txt
