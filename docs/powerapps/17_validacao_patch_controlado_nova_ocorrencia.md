# V053 - Validação do Patch controlado da Nova Ocorrência

**Projeto:** Livro de Ocorrências Digital da Brigada de Incêndio
**Responsável:** Warley da Silva Conceição
**Data do registro:** 11/06/2026 20:22:35
**Ambiente:** Power Apps - Eletronuclear (default)
**Tela:** scrDashboard
**Área:** Nova Ocorrência

## Objetivo

Registrar a validação do primeiro Patch controlado da tela Nova Ocorrência, com gravação fictícia na lista Ocorrencias do SharePoint.

## Itens validados

- Validação obrigatória antes da gravação.
- Validação da hora no formato HH:MM.
- Destaque visual do campo Hora quando inválido.
- Reset do campo Hora quando inválido.
- Gravação na lista Ocorrencias via Patch.
- Campo Plantao gravado como referência SharePoint.
- Campo RegistradoPor gravado como pessoa SharePoint.
- Campo LiderResponsavelNoMomento incluído no Patch.
- Uso de número temporário OCO-TESTE com GUID curto.
- Refresh da lista Ocorrencias após salvar.
- Retorno automático para a área Ocorrências após gravação.
- Exibição da ocorrência gravada na lista do plantão.

## Resultado observado

- Ocorrência fictícia salva com sucesso.
- Mensagem exibida no Power Apps: Ocorrência fictícia salva com sucesso.
- Lista de Ocorrências atualizada após o salvamento.
- Total de ocorrências exibido como 3 após a gravação.

## Observações técnicas

- A numeração OCO-TESTE baseada em GUID curto foi usada apenas para teste controlado.
- A numeração definitiva da ocorrência ainda deve ser revisada em etapa posterior.
- Evitou-se CountRows como numeração final para reduzir risco de duplicidade e limitação por delegação.
- O Patch precisou incluir campos obrigatórios reais da lista SharePoint.

## Pendências

- Definir regra definitiva de numeração da ocorrência.
- Avaliar uso do ID nativo do SharePoint para compor o número final.
- Criar limpeza/reset visual do formulário após salvamento.
- Revisar se ocorrências fictícias devem ser removidas antes do uso operacional.
- Preparar versão final sem indicação OCO-TESTE.

## Status

VALIDADO
