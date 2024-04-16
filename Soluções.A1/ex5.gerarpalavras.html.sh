#!/bin/bash

if [[ $# -ne 1 || ! "$1" =~ ^[0-9]+$ ]]; then
    echo "Uso: $0 <número inteiro>"
    exit 1
fi

n="$1"
arquivo_html="palavras.html"

cat inicio.html > "$arquivo_html"

palavras_frequentes=$(grep -o -w -E '\b[a-z]{4,}\b' ../Dados/O_cortico.txt | sort | uniq -c | sort -nr | head -n "$n")

while read -r linha; do
    palavra=$(echo "$linha" | awk '{print $2}')
    ocorrencias=$(echo "$linha" | awk '{print $1}')
    if grep -q -w "$palavra" ../Dados/palavras_antigas.lst; then
        echo "<tr style=\"color: red;\"><td>$palavra</td><td>$ocorrencias</td></tr>" >> "$arquivo_html"
    else
        echo "<tr><td>$palavra</td><td>$ocorrencias</td></tr>" >> "$arquivo_html"
    fi
done <<< "$palavras_frequentes"

cat fim.html >> "$arquivo_html"

echo "Arquivo $arquivo_html criado com sucesso."

