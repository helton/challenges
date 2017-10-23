#!/bin/sh

source ../utils/test-utils.sh

testHomem() {
  checkAnswerViaInputFile test01.txt homem
}

testAguia() {
  checkAnswerViaInputFile test02.txt aguia
}

testMinhoca() {
  checkAnswerViaInputFile test03.txt minhoca
}

build

printGreen "> Running tests..."
. ../utils/shunit2.sh
