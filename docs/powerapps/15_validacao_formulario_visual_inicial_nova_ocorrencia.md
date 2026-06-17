# V051 - Validação do formulário visual inicial de Nova Ocorrência

**Projeto:** Livro de Ocorrências Digital da Brigada de Incêndio
**Responsável:** Warley da Silva Conceição
**Data:** 11/06/2026
**Tela:** scrDashboard
**Área:** Nova Ocorrência

## Objetivo

Registrar a validação visual inicial do formulário de Nova Ocorrência no Power Apps, ainda sem gravação real de dados com Patch.

## Estrutura validada

- Container principal ctnNovaOcorrenciaPrincipal.
- Acesso pelo menu/contexto de Ocorrências usando arMenuSelecionado = "Nova Ocorrência".
- Formulário visual dentro de ctnNovaOcorrenciaFormulario.
- Campo Tipo da Ocorrência.
- Linha Data da Ocorrência e Hora da Ocorrência.
- Linha Posto de Serviço e Gravidade.
- Linha Local do Registro e Status da Ocorrência.
- Campo Descrição da Ocorrência.
- Campo Ações Tomadas.
- Botão tnNovaOcorrenciaVoltar.
- Botão tnNovaOcorrenciaSalvarProvisorio.

## Validações realizadas

- O formulário abriu corretamente pela área de Ocorrências.
- O menu Ocorrências permaneceu destacado ao acessar Nova Ocorrência.
- Os campos ficaram alinhados em linhas de duas colunas quando aplicável.
- Os campos longos de Descrição e Ações Tomadas apareceram corretamente.
- O botão Salvar Ocorrência exibiu apenas mensagem provisória, sem gravar dados.
- O botão Voltar para Ocorrências retornou para a área principal Ocorrências.

## Observação

Esta etapa validou somente a estrutura visual inicial. A gravação real da ocorrência em SharePoint será tratada em etapa posterior.
