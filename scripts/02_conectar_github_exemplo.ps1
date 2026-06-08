# Criado por Warley da Silva Conceição em 07/06/2026
# Finalidade: exemplo para conectar o repositório local ao GitHub.
# Antes de executar, substitua a URL abaixo pela URL real do repositório criado no GitHub.

$ErrorActionPreference = "Stop"

$RemoteUrl = "https://github.com/SEU-USUARIO/livro-ocorrencias-brigada.git"

git branch -M main
git remote add origin $RemoteUrl
git push -u origin main

Write-Host "Projeto enviado para o GitHub." -ForegroundColor Green
