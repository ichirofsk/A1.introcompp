#!/bin/bash

for arquivo in ./*; do
    if [ -f "$arquivo" ] && head -n 1 "$arquivo" | grep -q "#!/bin/bash"; then
        chmod u+x,g+x,o-rwx "$arquivo"
        chmod o-x "$arquivo"
        echo "Permissões alteradas para o arquivo $arquivo"
    fi
done


