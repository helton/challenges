#!/bin/sh

source ../../utils/test-utils.sh

test400_00() {
  checkAnswer 400.00 "Novo salario: 460.00
Reajuste ganho: 60.00
Em percentual: 15 %"
}

test800_01() {
  checkAnswer 800.01 "Novo salario: 880.01
Reajuste ganho: 80.00
Em percentual: 10 %"
}

test2000_00() {
  checkAnswer 2000.00 "Novo salario: 2140.00
Reajuste ganho: 140.00
Em percentual: 7 %"
}

build

printGreen "> Running tests..."
. ../../utils/shunit2.sh
