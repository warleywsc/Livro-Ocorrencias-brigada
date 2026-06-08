# Ajuste de Turno e Plantao Extra

Projeto: Livro de Ocorrencias Digital da Brigada de Incendio
Data: 08/06/2026
Status: Ajuste operacional registrado

## 1. Decisao

A opcao Administrativo foi substituida por Horario Comercial no campo Turno.

A opcao Extra deixou de ser valor do campo Turno e passou a ser representada por uma coluna propria do tipo Sim/Nao.

## 2. Campo Turno

Valores oficiais:

- Dia
- Noite
- Horario Comercial

## 3. Campo PlantaoExtra

Nome tecnico:

PlantaoExtra

Descricao:

Indica se o plantao e extraordinario ou fora da escala normal.

Tipo:

Sim/Nao

Valor padrao:

Nao

Obrigatorio:

Sim

## 4. Justificativa

Extra nao representa um turno. Extra representa uma condicao do plantao.

Por isso, a modelagem correta e:

- Turno define o periodo do plantao.
- PlantaoExtra indica se o plantao esta fora da escala normal.

## 5. Impacto

Este ajuste afeta principalmente:

- Plantoes
- Dashboard Operacional
- Historico e Relatorio
- Relatorios
- Filtros do Power Apps

## 6. Status

A lista Plantoes foi criada manualmente no SharePoint com este ajuste.
