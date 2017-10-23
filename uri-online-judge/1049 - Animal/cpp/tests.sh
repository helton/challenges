#!/bin/sh

source ../../utils/test-utils.sh

testHomem() {
  checkAnswer "vertebrado
mamifero
onivoro
" homem
}

testAguia() {
  checkAnswer "vertebrado
ave
carnivoro
" aguia
}

testMinhoca() {
  checkAnswer "invertebrado
anelideo
onivoro
" minhoca
}

build

printGreen "> Running tests..."
. ../../utils/shunit2.sh
