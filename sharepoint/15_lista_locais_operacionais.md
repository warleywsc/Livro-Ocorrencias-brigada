# Lista LocaisOperacionais

Projeto: Livro de Ocorrencias Digital da Brigada de Incendio
Data: 08/06/2026
Status: Criada manualmente no SharePoint

## 1. Site

https://etnweb.sharepoint.com/sites/BrigadaIncendio

## 2. Finalidade

A lista LocaisOperacionais sera usada como cadastro pesquisavel de locais detalhados para ocorrencias, inspecoes, pendencias e demais registros operacionais.

## 3. Separacao conceitual

PostoServico representa o posto amplo de atuacao:

- Angra 1
- Angra 2
- Angra 3
- Brigada de Incendio

LocalOperacional representa o local detalhado do fato ou registro:

- Zona
- Local
- Area
- Elevacao
- Complemento
- Referencia

## 4. Regra de historico

Como locais podem mudar com o tempo, registros como ocorrencias e pendencias nao devem depender apenas do cadastro atual do local.

Cada registro deve guardar tambem campos de snapshot textual, como:

- ZonaRegistro
- LocalRegistro
- AreaRegistro
- ElevacaoRegistro
- ComplementoLocal

## 5. Campos da lista LocaisOperacionais

- Titulo
- CodigoLocalOperacional
- PostoServico
- Zona
- Local
- Area
- Elevacao
- LocalArea
- Complemento
- DescricaoReferencia
- StatusCadastro
- FonteCadastro
- Ativo
- ValidadoPor
- DataValidacao
- Observacoes

## 6. Proxima etapa

Ajustar a lista PendenciasOperacionais para incluir:

- LocalOperacional
- ZonaRegistro
- LocalRegistro
- AreaRegistro
- ElevacaoRegistro
- ComplementoLocal
