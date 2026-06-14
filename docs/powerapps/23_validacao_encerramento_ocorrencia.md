# V059 - Validação do encerramento de Ocorrência

**Projeto:** Livro de Ocorrências Digital da Brigada de Incêndio
**Responsável:** Warley da Silva Conceição
**Data do registro:** 14/06/2026 12:29:53
**Ambiente:** Power Apps - Eletronuclear (default)
**Tela:** scrDashboard
**Área:** Ocorrências / Detalhe da Ocorrência

## Objetivo

Registrar a validação funcional do encerramento de uma ocorrência selecionada.

## Itens validados

- Seleção de ocorrência na galeria principal.
- Exibição da ocorrência selecionada no painel de detalhe.
- Criação do botão Encerrar ocorrência.
- Exibição do botão apenas quando a ocorrência não está encerrada.
- Patch do campo StatusOcorrencia para Encerrada.
- Atualização de observação operacional com data, hora e usuário.
- Refresh da lista Ocorrencias após o encerramento.
- Reset da galeria principal após o encerramento.
- Manutenção da ocorrência selecionada após atualização.
- Ocultação do botão Encerrar ocorrência após status Encerrada.

## Resultado observado

- A ocorrência OCO-000006 foi encerrada com sucesso.
- O Power Apps exibiu a mensagem: Ocorrência encerrada com sucesso: OCO-000006.
- O painel de detalhe passou a exibir o status Encerrada.
- A lista de ocorrências passou a exibir OCO-000006 com status Encerrada.
- O botão Encerrar ocorrência deixou de aparecer após o encerramento.

## Observações técnicas

- A funcionalidade foi priorizada em relação ao refinamento visual.
- A etapa de layout definitivo dos cards foi pausada para fase posterior.
- A operação de encerramento usa Patch sobre varOcorrenciaSelecionada.
- O status Encerrada foi aceito pela lista Ocorrencias do SharePoint.

## Pendências

- Avaliar criação de campo específico para DataHoraEncerramento, se necessário.
- Avaliar criação de campo específico para EncerradoPor, se necessário.
- Avaliar se o encerramento deve exigir preenchimento de ações tomadas.
- Avaliar criação futura de reabertura de ocorrência.
- Melhorar aparência final dos cards e do painel somente após conclusão das funcionalidades principais.

## Status

VALIDADO
