#!/bin/sh

source ../utils/test-utils.sh

testBrasilia() {
  checkAnswer 61 "Brasilia"
}

testSalvador() {
  checkAnswer 71 "Salvador"
}

testSaoPaulo() {
  checkAnswer 11 "Sao Paulo"
}

testRioDeJaneiro() {
  checkAnswer 21 "Rio de Janeiro"
}

testJuizDeFora() {
  checkAnswer 32 "Juiz de Fora"
}

testCampinas() {
  checkAnswer 19 "Campinas"
}

testVitoria() {
  checkAnswer 27 "Vitoria"
}

testBeloHorizonte() {
  checkAnswer 31 "Belo Horizonte"
}

build

printGreen "> Running tests..."
. ../utils/shunit2.sh
