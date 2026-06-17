# V080 - Criação das colunas operacionais em Plantoes

**Projeto:** Livro de Ocorrências Digital da Brigada de Incêndio
**Responsável:** Warley da Silva Conceição
**Data:** 2026-06-16
**Etapa:** V080 - Definir regras de salvamento e finalização do Livro do Plantão

## Objetivo

Registrar a criação manual das colunas operacionais na lista SharePoint Plantoes.

A decisão técnica aprovada foi criar colunas específicas em Plantoes para salvar os campos operacionais do Livro do Plantão em fluxo contínuo.

## Colunas criadas

- StatusViaturas - Opção - Conforme; Com alteração; Não conferido
- StatusMateriais - Opção - Conforme; Com alteração; Não conferido
- StatusGeralConferencia - Opção - Conforme; Com alteração; Não conferido
- ObservacoesConferencia - Texto com várias linhas
- StatusRondas - Opção - Conforme; Com alteração; Não conferido
- StatusAreasOperacionais - Opção - Conforme; Com alteração; Não conferido
- StatusAnormalidades - Opção - Conforme; Com alteração; Não conferido
- ObservacoesInspecaoRotina - Texto com várias linhas
- StatusPotsRevisados - Opção - Conforme; Com alteração; Não conferido; Não se aplica
- StatusCienciaEquipePots - Opção - Conforme; Com alteração; Não conferido; Não se aplica
- StatusGeralPots - Opção - Conforme; Com alteração; Não conferido; Não se aplica
- ObservacoesPots - Texto com várias linhas
- RevisaoLivro - Opção - Pendente; Conferido; Com ajustes
- PendenciasCriticas - Opção - Não verificado; Não há; Existem
- LiberacaoFinal - Opção - Não liberado; Liberado; Aguardando ajuste
- ObservacoesRevisaoFinalizacao - Texto com várias linhas

## Configuração adotada

As colunas foram criadas como não obrigatórias no SharePoint.

A obrigatoriedade será controlada pelo Power Apps no botão Finalizar Livro.

## Validação

Warley validou por print que as colunas aparecem nas configurações da lista Plantoes.

## Próxima etapa

V081 - Configurar campos do Livro do Plantão para carregar e salvar colunas de Plantoes.
