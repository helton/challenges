#!/bin/sh

reset="\033[0m"
red="\033[0;31m"
green="\033[0;32m"
yellow="\033[0;33m"
printGreen() { echo $green$1$reset; }
printRed() { echo $red$1$reset; }
printYellow() { echo $yellow$1$reset; }
newline() { echo; }

runWithInput() {
  echo "$1" | ./app
}

checkAnswer() {
  assertEquals "$2" "$( runWithInput "$1" )"
}

build() {
  printGreen "> Building app..."
  newline
  g++ app.cpp -o app
}