# V054 - Validação da numeração definitiva da Nova Ocorrência

**Projeto:** Livro de Ocorrências Digital da Brigada de Incêndio
**Responsável:** Warley da Silva Conceição
**Data do registro:** 11/06/2026 20:25:35
**Ambiente:** Power Apps - Eletronuclear (default)
**Tela:** scrDashboard
**Área:** Nova Ocorrência / Ocorrências

## Objetivo

Registrar a validação da numeração definitiva da ocorrência usando o ID nativo gerado pelo SharePoint.

## Itens validados

- Gravação inicial da ocorrência com número temporário técnico.
- Retorno do ID nativo do SharePoint após o primeiro Patch.
- Atualização do mesmo registro com número definitivo no formato OCO-000000.
- Atualização dos campos Title e NumeroOcorrencia com a numeração definitiva.
- Refresh da lista Ocorrencias após salvar.
- Retorno automático para a área Ocorrências.
- Exibição da ocorrência recém-criada na lista do plantão.

## Resultado observado

- Nova ocorrência exibida na lista como OCO-000004.
- Total de ocorrências exibido como 4.
- A ocorrência apareceu com tipo Incêndio, status Aberta, local UBD e descrição preenchida.

## Observações técnicas

- A numeração definitiva passou a ser baseada no ID nativo do SharePoint.
- O padrão OCO-TESTE foi substituído na ocorrência nova pelo padrão definitivo OCO-000000.
- Registros fictícios antigos com prefixo OCO-TESTE permanecem na lista apenas como massa de validação.
- A limpeza de registros fictícios deve ser feita posteriormente, com decisão explícita.

## Pendências

- Definir se os registros fictícios anteriores serão removidos da lista Ocorrencias.
- Melhorar a exibição da lista de ocorrências, com ordenação, layout e informações principais.
- Preparar tela ou painel de detalhe da ocorrência.

## Status

VALIDADO
