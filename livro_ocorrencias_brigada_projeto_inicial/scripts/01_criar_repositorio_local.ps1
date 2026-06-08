# Criado por Warley da Silva Conceição em 07/06/2026
# Finalidade: inicializar o repositório local do projeto Livro de Ocorrências Digital da Brigada de Incêndio.
# Execute este script dentro da pasta raiz do projeto, após revisar os arquivos gerados.

$ErrorActionPreference = "Stop"

Write-Host "Inicializando repositório Git..." -ForegroundColor Cyan

git init

git add .

git commit -m "docs: estrutura inicial do livro de ocorrencias digital"

Write-Host "Repositório local inicializado com commit inicial." -ForegroundColor Green
Write-Host "Próximo passo: criar o repositório no GitHub e conectar o remote origin." -ForegroundColor Yellow
