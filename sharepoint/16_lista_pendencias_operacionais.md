# Lista PendenciasOperacionais

Projeto: Livro de Ocorrencias Digital da Brigada de Incendio
Data: 08/06/2026
Status: Criada manualmente no SharePoint

## 1. Site

https://etnweb.sharepoint.com/sites/BrigadaIncendio

## 2. Finalidade

A lista PendenciasOperacionais controla pendencias abertas, em acompanhamento, aguardando manutencao, concluidas ou canceladas entre plantoes.

## 3. Relacionamentos

- PlantaoOrigem consulta a lista Plantoes.
- LocalOperacional consulta a lista LocaisOperacionais.

## 4. Titulo

A coluna padrao Titulo sera usada como resumo curto da pendencia operacional.

Nao criar coluna separada chamada Titulo.

## 5. Localizacao

A pendencia pode ter vinculo com um local detalhado por meio do campo LocalOperacional.

Para preservar historico, tambem foram criados campos de snapshot textual:

- ZonaRegistro
- LocalRegistro
- AreaRegistro
- ElevacaoRegistro
- ComplementoLocal

## 6. Colunas criadas

- Titulo
- NumeroPendencia
- PlantaoOrigem
- OrigemPendencia
- Descricao
- PostoServico
- LocalOperacional
- PendenciaComLocalEspecifico
- ZonaRegistro
- LocalRegistro
- AreaRegistro
- ElevacaoRegistro
- ComplementoLocal
- Prioridade
- StatusPendencia
- ResponsavelAcompanhamento
- Prazo
- DataAbertura
- DataConclusao
- Conclusao
- ConcluidoPor
- Observacoes

## 7. Proxima etapa

Criar a lista Ocorrencias com campos de responsabilidade, autoria, registro posterior e LocalOperacional.
