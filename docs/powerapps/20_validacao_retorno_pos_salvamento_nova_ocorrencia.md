# V056 - Validação do retorno pós-salvamento da Nova Ocorrência

**Projeto:** Livro de Ocorrências Digital da Brigada de Incêndio
**Responsável:** Warley da Silva Conceição
**Data do registro:** 11/06/2026 20:41:34
**Ambiente:** Power Apps - Eletronuclear (default)
**Tela:** scrDashboard
**Área:** Nova Ocorrência / Ocorrências

## Objetivo

Registrar a validação do fluxo pós-salvamento da Nova Ocorrência, garantindo que a ocorrência recém-salva seja exibida no topo da lista de Ocorrências e fique destacada visualmente.

## Itens validados

- Salvamento da nova ocorrência com Patch na lista Ocorrencias.
- Geração de numeração definitiva baseada no ID nativo do SharePoint.
- Atualização dos campos Title e NumeroOcorrencia após o ID ser gerado.
- Armazenamento da ocorrência recém-salva em varOcorrenciaSelecionada.
- Refresh da lista Ocorrencias após salvamento.
- Retorno automático para a área Ocorrências.
- Reset da galeria principal de ocorrências.
- Ordenação da galeria por ID decrescente.
- Exibição da ocorrência recém-salva no topo da lista.
- Destaque visual em verde claro para a ocorrência selecionada/recém-salva.

## Resultado observado

- A ocorrência OCO-000006 foi salva com sucesso.
- A mensagem de sucesso foi exibida no Power Apps.
- A tela retornou automaticamente para Ocorrências.
- A ocorrência OCO-000006 apareceu no topo da lista.
- A ocorrência recém-salva ficou destacada visualmente em verde claro.
- O total de ocorrências foi atualizado para 6.

## Observações técnicas

- A propriedade Items da galeria usa SortByColumns com ID em ordem decrescente.
- A propriedade Default da galeria usa varOcorrenciaSelecionada.
- O Fill do controle de resumo da galeria destaca o item cujo ID é igual ao ID de varOcorrenciaSelecionada.
- O fluxo passou a priorizar retorno visual claro após o salvamento.

## Pendências

- Preparar painel ou tela de detalhe da ocorrência selecionada.
- Avaliar limpeza dos registros fictícios antigos.
- Avaliar filtros por tipo, status, gravidade e data.
- Preparar layout definitivo dos cards de ocorrência.

## Status

VALIDADO
