# V061 - Validação da geração de Pendência a partir da Ocorrência

**Projeto:** Livro de Ocorrências Digital da Brigada de Incêndio
**Responsável:** Warley da Silva Conceição
**Data do registro:** 14/06/2026 12:43:27
**Ambiente:** Power Apps - Eletronuclear (default)
**Tela:** scrDashboard
**Área:** Ocorrências / Pendências

## Objetivo

Registrar a validação funcional da criação de pendência operacional a partir de uma ocorrência selecionada.

## Itens validados

- Seleção de ocorrência na galeria principal de Ocorrências.
- Exibição da ocorrência selecionada no painel de detalhe.
- Criação do botão Gerar pendência.
- Exibição do botão somente quando a ocorrência ainda não possui pendência gerada.
- Criação de item na lista PendenciasOperacionais via Patch.
- Geração de número temporário da pendência.
- Atualização da pendência com número definitivo baseado no ID nativo do SharePoint.
- Preenchimento do campo NumeroPendencia.
- Preenchimento do relacionamento PlantaoOrigem.
- Preenchimento da origem da pendência como Ocorrência.
- Preenchimento da descrição da pendência com dados da ocorrência.
- Preenchimento de posto de serviço, local, prioridade, status e responsável.
- Atualização da ocorrência com GeraPendencia igual a true.
- Vinculação da ocorrência com a pendência gerada por meio do campo PendenciaGerada.
- Atualização das listas Ocorrencias e PendenciasOperacionais.
- Exibição da informação Pendência gerada no detalhe da ocorrência.
- Exibição da nova pendência na área Pendências.

## Resultado observado

- O Power Apps exibiu a mensagem: Pendência gerada com sucesso: PEN-000002.
- O detalhe da ocorrência passou a exibir a indicação Pendência gerada.
- A área Pendências passou a exibir total de pendências igual a 2.
- A pendência criada a partir da ocorrência apareceu na lista de Pendências do Plantão.

## Observações técnicas

- A geração da pendência usa Patch na lista PendenciasOperacionais.
- A numeração definitiva da pendência usa o ID nativo do SharePoint no formato PEN-000000.
- A ocorrência é atualizada após a criação da pendência, evitando duplicidade por meio do campo GeraPendencia.
- O vínculo entre ocorrência e pendência é registrado no campo PendenciaGerada.
- A melhoria visual da lista de Pendências fica pausada para etapa posterior, pois a prioridade atual é funcionalidade.

## Pendências

- Melhorar posteriormente a aparência da lista de Pendências.
- Criar painel de detalhe da pendência selecionada.
- Criar fluxo para concluir pendência.
- Avaliar criação de retorno da pendência para a ocorrência de origem.
- Avaliar limpeza dos registros fictícios antigos antes do uso operacional.

## Status

VALIDADO
