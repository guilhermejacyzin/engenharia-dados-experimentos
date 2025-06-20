#!/bin/bash

cd ~/engenharia-dados-experimentos || exit

# Adiciona todos os arquivos, mesmo que não alterados
git add -A

# Commit com timestamp (evita conflito de commit vazio)
git commit -m "Commit automático - $(date '+%Y-%m-%d %H:%M:%S')" --allow-empty

# Envia para o repositório remoto
git push origin mestre

