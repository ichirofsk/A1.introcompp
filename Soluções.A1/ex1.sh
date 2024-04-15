#!/bin/bash

cd ../Textos.A1 || exit 1

for arquivo in *; do
    if [ -f "$arquivo" ]; then
        primeira_linha=$(head -n 1 "$arquivo")
        if [[ "$primeira_linha" == "#!;bin;bash" ]]; then
            chmod u+x,g+x,o-rwx "$arquivo"
            echo "Permissões alteradas para o arquivo $arquivo"
        fi
    fi
done

