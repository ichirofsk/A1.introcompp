#!/bin/bash

for arquivo in ./*; do
    if [ -f "$arquivo" ] && head -n 1 "$arquivo" | grep -q "#!/bin/bash"; then
        chmod 750 "$arquivo"
        echo "Permissões alteradas para o arquivo $arquivo"
    fi
done


