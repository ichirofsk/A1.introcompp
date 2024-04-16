#!/bin/bash

grep -oE '\b[a-z]{4,}\b' ../Dados/O_cortico.txt | awk '{count[$0]++} END {for (word in count) print word, count[word]}' | sort > ../Textos.A1/vocabulario.txt

