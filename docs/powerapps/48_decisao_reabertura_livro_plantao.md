# V084 - Decisão operacional da reabertura do Livro do Plantão

**Data:** 2026-06-17 20:55:19  
**Status:** decisão técnica em validação

## 1. Objetivo

Registrar a decisão operacional recomendada para reabertura do Livro do Plantão antes de consolidar a implementação definitiva no Power Apps e SharePoint.

## 2. Situação atual

Foi testada reabertura básica com:

- botão Reabrir
- modal de justificativa
- validação mínima de justificativa
- retorno de StatusLivro para Em preenchimento
- limpeza de DataFinalizacao
- limpeza de FinalizadoPor
- gravação de JustificativaReabertura

O teste funcional indicou que a rotina básica funciona.

## 3. Problema identificado

A implementação básica ainda não registra histórico completo da reabertura.

Se o Livro for reaberto mais de uma vez, a coluna JustificativaReabertura será sobrescrita.

## 4. Decisão recomendada

Antes de registrar a V084 como concluída, ajustar a regra para incluir:

- DataUltimaReabertura
- ReabertoPorUltimo
- QuantidadeReaberturas
- lista HistoricoReaberturasPlantao

## 5. Contextos permitidos para reabertura

A reabertura deve ser usada somente para correção justificada:

- correção de informação preenchida errada;
- complementação de informação esquecida;
- ajuste de status operacional;
- correção antes de relatório;
- correção solicitada por líder, supervisão ou administração.

## 6. Perfis autorizados

Regra recomendada:

- Administrador
- Supervisor / Coordenação
- Líder responsável pelo plantão

## 7. Regra de quantidade

Não limitar quantidade de reaberturas no MVP.

Permitir múltiplas reaberturas, desde que cada uma gere histórico independente.

## 8. Histórico recomendado

Criar lista:

- HistoricoReaberturasPlantao

Colunas recomendadas:

- Plantao
- CodigoPlantao
- DataHoraReabertura
- ReabertoPor
- Justificativa
- StatusAnterior
- StatusNovo
- DataFinalizacaoAnterior
- FinalizadoPorAnterior
- NumeroReabertura

## 9. Próximo passo técnico

Criar as colunas complementares em Plantoes e a lista HistoricoReaberturasPlantao antes de fechar a V084.
