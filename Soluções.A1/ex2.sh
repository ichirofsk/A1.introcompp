#!/bin/bash

atitulo=$(head -n 11 "../Dados/O_cortico.txt")

linhas=$(wc -l < ../Dados/O_cortico.txt)

palavras=$(wc -w < ../Dados/O_cortico.txt)

caracteres=$(wc -m < ../Dados/O_cortico.txt)

ano_publicacao=$(grep -oE '[0-9]{4}' ../Dados/O_cortico.txt | sed -n '3p')

(echo "Título do livro: $atitulo"

echo "Quantidade de linhas: $linhas"

echo "Quantidade de palavras: $palavras"

echo "Quantidade de caracteres: $caracteres"

echo "Ano de publicação do livro: $ano_publicacao") > ../Textos.A1/ex2.txt
