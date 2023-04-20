#!/usr/bin/env bash
function fibseries {
  if [[ "$1" == 0 ]]; then
    return 0
  fi
  if [[ "$1" == 1 ]]; then
    return 1
  fi
  local f1=$(("$1"-1))
  local f2=$(("$1"-2))
  local result
  result=$(("$f1" + "$f2"))
  return "$result"
  }

fibseries 6
echo $?

#return nie może zwrócić wartości większej niż 255, dlatego lepszym rozwiązaniem byłoby
#przechowywać wynik w zmiennej globalnej