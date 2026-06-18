# V085 - Estrutura manual SharePoint para histórico de reabertura do Livro do Plantão

**Data:** 2026-06-17 21:41:15  
**Status:** concluído  
**Método:** criação manual no Microsoft Lists  
**Site:** https://etnweb.sharepoint.com/sites/BrigadaIncendio

## 1. Objetivo

Registrar a criação manual da estrutura SharePoint necessária para controlar reaberturas do Livro do Plantão com rastreabilidade.

A estrutura foi criada manualmente no Microsoft Lists porque a automação via PnP PowerShell exigiu aprovação administrativa com permissão ampla no ambiente, o que não é adequado para esta etapa do projeto.

## 2. Decisão técnica

A V085 passa a adotar criação manual controlada no Microsoft Lists.

Motivos:

- evitar dependência de aprovação administrativa para App Registration PnP;
- evitar solicitação de permissão ampla sobre todos os conjuntos de sites;
- manter a evolução do projeto dentro do site BrigadaIncendio;
- permitir validação visual e operacional pelo usuário;
- manter rastreabilidade documental no Git.

## 3. Colunas complementares criadas na lista Plantoes

Foram criadas ou validadas manualmente na lista **Plantoes** as seguintes colunas:

| Coluna | Tipo | Obrigatório | Observação |
|---|---|---:|---|
| JustificativaReabertura | Várias linhas de texto | Não | Guarda a justificativa mais recente da reabertura |
| DataUltimaReabertura | Data e hora | Não | Guarda a data/hora da última reabertura |
| ReabertoPorUltimo | Pessoa | Não | Guarda o usuário da última reabertura |
| QuantidadeReaberturas | Número | Não | Contador acumulado de reaberturas |

## 4. Lista criada

Foi criada manualmente a lista:

- HistoricoReaberturasPlantao

Descrição operacional:

- Histórico de reaberturas do Livro do Plantão, com data, usuário, justificativa e vínculo técnico com o plantão reaberto.

## 5. Colunas da lista HistoricoReaberturasPlantao

| Coluna | Tipo | Obrigatório | Observação |
|---|---|---:|---|
| Título | Uma linha de texto | Sim | Texto automático previsto: Reabertura N - Código do Plantão |
| PlantaoId | Número | Sim | ID do item na lista Plantoes |
| CodigoPlantao | Uma linha de texto | Não | Código operacional do plantão |
| DataHoraReabertura | Data e hora | Sim | Data/hora em que a reabertura foi feita |
| ReabertoPor | Pessoa | Sim | Usuário que fez a reabertura |
| Justificativa | Várias linhas de texto | Sim | Justificativa obrigatória da reabertura |
| StatusAnterior | Escolha | Não | Status antes da reabertura |
| StatusNovo | Escolha | Não | Status após a reabertura |
| DataFinalizacaoAnterior | Data e hora | Não | Data de finalização anterior, antes da limpeza no item principal |
| FinalizadoPorAnterior | Pessoa | Não | Usuário que havia finalizado antes da reabertura |
| NumeroReabertura | Número | Não | Número sequencial da reabertura |
| ObservacoesTecnicas | Várias linhas de texto | Não | Campo técnico para auditoria futura |

## 6. Opções dos campos de status

Campos:

- StatusAnterior
- StatusNovo

Opções:

- Em preenchimento
- Finalizado
- Cancelado

## 7. Vínculo com o plantão

Nesta etapa, o vínculo entre o histórico e a lista Plantoes será feito por:

- PlantaoId
- CodigoPlantao

Não foi criada coluna Lookup nesta etapa.

Motivo:

- simplificar o Patch no Power Apps;
- reduzir risco de erro de gravação;
- manter vínculo técnico suficiente para auditoria;
- permitir evolução futura para Lookup, caso necessário.

## 8. Exibição recomendada

A exibição principal da lista HistoricoReaberturasPlantao deve mostrar:

- Título
- PlantaoId
- CodigoPlantao
- DataHoraReabertura
- ReabertoPor
- Justificativa
- StatusAnterior
- StatusNovo
- DataFinalizacaoAnterior
- FinalizadoPorAnterior
- NumeroReabertura
- ObservacoesTecnicas

Ordenação recomendada:

- DataHoraReabertura em ordem decrescente.

## 9. Regra operacional definida

A cada reabertura do Livro do Plantão, o Power Apps deverá:

1. validar se o Livro está com StatusLivro = Finalizado;
2. exigir justificativa com tamanho mínimo;
3. calcular o próximo número de reabertura;
4. registrar item em HistoricoReaberturasPlantao;
5. atualizar Plantoes com:
   - StatusLivro = Em preenchimento;
   - JustificativaReabertura;
   - DataUltimaReabertura;
   - ReabertoPorUltimo;
   - QuantidadeReaberturas;
   - DataFinalizacao em branco;
   - FinalizadoPor em branco;
6. liberar edição novamente no Livro do Plantão.

## 10. Validação visual

A lista HistoricoReaberturasPlantao foi criada e validada visualmente no Microsoft Lists.

## 11. Próxima etapa

V086 - Ajustar o Patch de reabertura no Power Apps para gravar histórico e contador.
