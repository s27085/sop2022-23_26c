#!/usr/bin/env bash
TABLICA=()
for i; do                     #bez dodawania 'in' pętla przeiteruje wszystkie argumenty
    TABLICA+=("$i")
done
for i in "${TABLICA[@]}"; do
    cat "$i"
done
echo ""
for i in "${TABLICA[@]}"; do
    tac "$i" | rev
done

#Iterowanie przez argumenty
#https://stackoverflow.com/questions/12711786/convert-command-line-arguments-into-an-array-in-bash
#Czytanie znaków od tyłu
#https://askubuntu.com/questions/691722/is-there-a-way-to-read-characters-backwards-from-the-end-of-a-file-in-the-termin