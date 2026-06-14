# V058 - Validação dos filtros da lista de Ocorrências

**Projeto:** Livro de Ocorrências Digital da Brigada de Incêndio
**Responsável:** Warley da Silva Conceição
**Data do registro:** 14/06/2026 12:15:06
**Ambiente:** Power Apps - Eletronuclear (default)
**Tela:** scrDashboard
**Área:** Ocorrências

## Objetivo

Registrar a validação funcional e visual dos filtros da lista principal de Ocorrências.

## Itens validados

- Criação do container de filtros da área Ocorrências.
- Campo de busca textual por número, local, descrição e ações tomadas.
- Filtro por Tipo da Ocorrência.
- Filtro por Status da Ocorrência.
- Filtro por Gravidade.
- Botão Limpar filtros.
- Reset da busca textual.
- Reset dos filtros suspensos.
- Reset da galeria após limpeza dos filtros.
- Atualização do contador de ocorrências exibidas.
- Manutenção da ordenação por ID decrescente.
- Ajuste visual da barra de filtros.
- Correção da quebra de linha do botão Limpar.
- Alinhamento visual dos campos de busca, suspensos e botão.
- Preservação do contraste original dos suspensos.

## Resultado observado

- Busca por UBA retornou 1 ocorrência.
- Ao limpar os filtros, a lista voltou a exibir 6 ocorrências.
- Filtro combinado por Incêndio, Aberta e Informativa retornou 5 ocorrências.
- O botão Limpar filtros exibiu mensagem de confirmação.
- A barra de filtros ficou visualmente aceitável, sem quebra de texto no botão.
- Os filtros ficaram alinhados em linha única.
- A área Ocorrências permaneceu funcional após os filtros.

## Observações visuais

- A propriedade Fill do item selecionado foi mantida com destaque verde claro para preservar o comportamento já validado da ocorrência selecionada.
- A propriedade SelectionColor dos suspensos não foi alterada para branco porque isso quebraria o contraste visual na interface atual.
- A prioridade definida foi manter boa leitura e contraste adequado nos filtros.

## Observações técnicas

- A galeria galOcorrenciasPrincipal passou a usar Filter com condições opcionais.
- O contador passou a usar CountRows(galOcorrenciasPrincipal.AllItems).
- Os filtros usam opções Todos/Todas combinadas com Choices da lista Ocorrencias.
- A busca textual utiliza comparação em minúsculas com Lower e Trim.
- Os avisos amarelos exibidos no editor do Power Apps foram tratados como observação técnica futura, sem bloqueio da validação funcional e visual.

## Pendências

- Melhorar o layout definitivo dos cards de Ocorrências.
- Avaliar filtros adicionais por período/data.
- Avaliar limpeza dos registros fictícios antigos.
- Avaliar criação futura de edição ou encerramento da ocorrência.
- Avaliar alertas de delegação/fórmulas indicados pelo Power Apps.

## Status

VALIDADO
