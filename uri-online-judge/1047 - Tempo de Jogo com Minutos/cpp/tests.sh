#!/bin/sh

source ../../utils/test-utils.sh

test01() {
  checkAnswer "7 8 9 10" "O JOGO DUROU 2 HORA(S) E 2 MINUTO(S)"
}

test02() {
  checkAnswer "7 7 7 7" "O JOGO DUROU 24 HORA(S) E 0 MINUTO(S)"
}

test03() {
  checkAnswer "7 10 8 9" "O JOGO DUROU 0 HORA(S) E 59 MINUTO(S)"
}

build

printGreen "> Running tests..."
. ../../utils/shunit2.sh
