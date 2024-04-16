#!/bin/bash

arquivo_palavras="../Dados/palavras_antigas.lst"
arquivo_texto="../Dados/O_cortico.txt"

arquivo_ocorrencias="../Textos.A1/ocorrencias.txt"

while read -r palavra; do
    ocorrencias=$(grep -o -w "$palavra" "$arquivo_texto" | wc -l)
    echo "$palavra $ocorrencias" >> "$arquivo_ocorrencias"
done < "$arquivo_palavras"

echo "Contagem de ocorrências concluída. Resultados salvos em $arquivo_ocorrencias."
