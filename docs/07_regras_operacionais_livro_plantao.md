# Regras Operacionais do Livro do Plantão

**Atualizado em:** 2026-06-17 20:55:19

## 1. Objetivo

Centralizar as regras operacionais do Livro do Plantão para evitar duplicidade em documentos soltos de validação.

## 2. Fluxo principal

O Livro do Plantão segue fluxo contínuo em uma única tela rolável, na ordem operacional do livro físico:

1. Cabeçalho do Plantão
2. Recebimento do Serviço
3. Equipe do Plantão
4. Conferência de Viaturas e Materiais
5. Inspeção de Rotina
6. POTS Revisados
7. Ocorrências do Plantão
8. Pendências Operacionais
9. Revisão e Finalização

## 3. Salvamento

O Livro do Plantão pode ser salvo enquanto estiver em preenchimento.

A gravação principal ocorre na lista Plantoes.

## 4. Finalização

A finalização somente deve ocorrer quando:

- Revisão do Livro = Conferido
- Pendências Críticas não podem existir
- Liberação Final = Liberado

Após finalizado:

- StatusLivro = Finalizado
- DataFinalizacao deve ser preenchida
- FinalizadoPor deve ser preenchido
- os campos editáveis devem ficar bloqueados

## 5. Reabertura

A reabertura somente deve ser permitida quando:

- StatusLivro = Finalizado

A reabertura deve exigir justificativa obrigatória.

Contextos permitidos:

- correção de informação preenchida errada;
- complementação de observação esquecida;
- ajuste de status de conferência, inspeção ou POTS;
- correção antes de emissão de relatório;
- correção identificada pelo líder, supervisão ou administração.

A reabertura não deve ser usada para edição livre de histórico sem justificativa.

## 6. Quem pode reabrir

Regra recomendada para o MVP:

- Administrador
- Supervisor / Coordenação
- Líder responsável pelo próprio plantão

Regra futura recomendada:

- Líder só reabre o próprio plantão.
- Administrador ou Supervisor pode reabrir qualquer plantão.

## 7. Dados mínimos da reabertura

A reabertura deve gravar:

- JustificativaReabertura
- DataUltimaReabertura
- ReabertoPorUltimo
- QuantidadeReaberturas

## 8. Histórico de reaberturas

Para permitir mais de uma reabertura sem perder histórico, deve ser criada lista específica:

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

## 9. Histórico de alterações pós-reabertura

Recomendação de evolução:

- na primeira fase, registrar o histórico da reabertura;
- em etapa futura, registrar alterações campo a campo feitas após a reabertura.

## 10. Decisão operacional recomendada

Permitir múltiplas reaberturas, desde que cada reabertura gere registro histórico independente.

Não aplicar limite rígido no MVP.

Criar aviso operacional quando QuantidadeReaberturas for maior ou igual a 2.
