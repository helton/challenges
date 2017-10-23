#!/bin/sh

source ../../utils/test-utils.sh

test01() {
  checkAnswer "16 2" "O JOGO DUROU 10 HORA(S)"
}

test02() {
  checkAnswer "0 0" "O JOGO DUROU 24 HORA(S)"
}

test03() {
  checkAnswer "2 16" "O JOGO DUROU 14 HORA(S)"
}

build

printGreen "> Running tests..."
. ../../utils/shunit2.sh
