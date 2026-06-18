# V086 - Patch de reabertura com histórico e contador

**Data:** 2026-06-17 22:26:24  
**Status:** concluído  
**Tela:** scrDashboard  
**Área:** Livro do Plantão  
**Componente principal:** btnConfirmarReaberturaLivro

## 1. Objetivo

Registrar a implementação e validação do Patch de reabertura do Livro do Plantão com histórico independente e contador acumulado de reaberturas.

A V086 complementa a estrutura criada na V085, fazendo o Power Apps gravar cada reabertura na lista **HistoricoReaberturasPlantao** e atualizar os campos de controle da lista **Plantoes**.

## 2. Fontes de dados usadas

Foram usadas as seguintes fontes de dados no Power Apps:

- Plantoes
- HistoricoReaberturasPlantao

## 3. Componente alterado

Foi alterada a propriedade **OnSelect** do botão:

- btnConfirmarReaberturaLivro

## 4. Comportamento implementado

O botão Confirmar reabertura passou a executar o seguinte fluxo:

1. verifica se já existe processamento em andamento;
2. valida se a justificativa possui pelo menos 10 caracteres;
3. define data/hora da reabertura;
4. calcula o próximo número sequencial de reabertura;
5. monta o objeto do usuário que está reabrindo;
6. cria item na lista HistoricoReaberturasPlantao;
7. atualiza o item correspondente na lista Plantoes;
8. retorna StatusLivro para Em preenchimento;
9. grava justificativa mais recente no item principal;
10. grava data/hora da última reabertura;
11. grava usuário da última reabertura;
12. atualiza QuantidadeReaberturas;
13. limpa DataFinalizacao;
14. limpa FinalizadoPor;
15. fecha o modal de reabertura;
16. exibe mensagem de sucesso.

## 5. Campos gravados em HistoricoReaberturasPlantao

A cada reabertura, o Power Apps cria um item na lista HistoricoReaberturasPlantao com os seguintes campos:

- Title
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

## 6. Campos atualizados em Plantoes

A cada reabertura, o Power Apps atualiza o item principal da lista Plantoes com:

- StatusLivro = Em preenchimento
- JustificativaReabertura
- DataUltimaReabertura
- ReabertoPorUltimo
- QuantidadeReaberturas
- DataFinalizacao = vazio
- FinalizadoPor = vazio

## 7. Regra do contador

O número da reabertura é calculado com base no campo:

- QuantidadeReaberturas

Regra aplicada:

- se estiver vazio, considera 0;
- soma 1;
- grava o novo número no histórico;
- atualiza o contador no item principal.

Exemplo validado:

- primeira reabertura: NumeroReabertura = 1
- segunda reabertura: NumeroReabertura = 2

## 8. Preservação de dados anteriores

Antes de limpar DataFinalizacao e FinalizadoPor na lista Plantoes, o Power Apps registra esses dados no histórico:

- DataFinalizacaoAnterior
- FinalizadoPorAnterior

Isso garante rastreabilidade da finalização anterior mesmo após a reabertura.

## 9. Tratamento de erro

A rotina usa IfError em duas etapas:

1. criação do histórico;
2. atualização do item principal em Plantoes.

Se a criação do histórico falhar:

- o livro não é reaberto;
- a mensagem de erro informa falha no histórico;
- o processamento é liberado.

Se o histórico for criado, mas a atualização de Plantoes falhar:

- a mensagem informa que o histórico foi registrado, mas houve erro ao reabrir o livro;
- o processamento é liberado.

## 10. Validações realizadas

### 10.1 Primeira reabertura

Resultado validado:

- item criado em HistoricoReaberturasPlantao;
- NumeroReabertura = 1;
- PlantaoId preenchido;
- CodigoPlantao preenchido;
- StatusAnterior = Finalizado;
- StatusNovo = Em preenchimento;
- DataFinalizacaoAnterior preenchida;
- FinalizadoPorAnterior preenchido;
- ObservacoesTecnicas preenchida.

Status: aprovado.

### 10.2 Segunda reabertura

Resultado validado:

- segundo item criado em HistoricoReaberturasPlantao;
- NumeroReabertura = 2;
- histórico acumulado mantido;
- dados anteriores preservados;
- contador funcionando corretamente.

Status: aprovado.

### 10.3 Lista Plantoes

Resultado esperado e validado no fluxo:

- StatusLivro retorna para Em preenchimento após reabertura;
- campos voltam a ficar editáveis;
- botão Reabrir fica bloqueado após reabertura;
- botões Salvar e Finalizar ficam ativos.

Status: aprovado.

## 11. Ajustes visuais nos modais

Também foram ajustados os tamanhos dos cards dos modais para evitar botões cortados:

- ctnModalReaberturaLivroCard.Height = 430
- ctnModalFinalizacaoLivroCard.Height = 340

Foi confirmada a centralização com:

- Y = (Parent.Height - Self.Height) / 2

## 12. Resultado da etapa

A V086 foi concluída com sucesso.

O Livro do Plantão agora possui reabertura com:

- justificativa obrigatória;
- histórico independente;
- contador acumulado;
- preservação da finalização anterior;
- atualização do item principal;
- rastreabilidade por PlantaoId e CodigoPlantao;
- tratamento básico de erro;
- modais visualmente ajustados.

## 13. Próxima etapa sugerida

V087 - Validar e documentar regras de permissão para reabertura do Livro do Plantão.
