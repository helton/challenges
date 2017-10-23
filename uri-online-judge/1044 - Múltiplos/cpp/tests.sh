#!/bin/sh

source ../../utils/test-utils.sh

testMultiplos() {
  checkAnswer "6 24" "Sao Multiplos"
}

testNaoMultiplos() {
  checkAnswer "6 25" "Nao sao Multiplos"
}

build

printGreen "> Running tests..."
. ../../utils/shunit2.sh
