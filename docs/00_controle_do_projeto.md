# Controle do Projeto

## Projeto

Livro de Ocorrências Digital da Brigada de Incêndio.

## Objetivo

Consolidar o MVP visual aprovado no Google Stitch e preparar a implementação real em Power Apps, Microsoft Lists e SharePoint.

## Decisão de fluxo

1. Organizar documentação no VS Code.
2. Versionar com Git/GitHub.
3. Validar estrutura das listas.
4. Criar listas no SharePoint/Microsoft Lists.
5. Criar app Canvas no Power Apps.
6. Validar com dados fictícios.
7. Liberar uso controlado.

## Ferramentas

| Ferramenta | Uso |
|---|---|
| VS Code | Organização, documentação, prompts e versionamento |
| GitHub | Histórico e backup do projeto |
| Antigravity | Apoio para revisão e geração de arquivos/fórmulas |
| Power Apps | Implementação real do app |
| Microsoft Lists / SharePoint | Base de dados |
| Figma | Não priorizado neste momento |

## Regras fixas

- Interface sempre em português do Brasil.
- Nome oficial: Livro de Ocorrências Digital da Brigada de Incêndio.
- Não usar nomes em inglês ou rótulos herdados do Stitch.
- Header, sidebar e footer devem ser componentes únicos reutilizáveis.
- Footer no fluxo normal da página.
- Botões finais antes do footer.
- Não usar HTML exportado como arquitetura final sem refatoração.

---

## Registro — Validação da Modelagem das Listas

Data: 07/06/2026  
Status: Validado para refinamento

Decisão registrada:

- Manter a estrutura inicial com 12 listas.
- Criar as listas no SharePoint por fases.
- Começar pela base operacional mínima.
- Não criar listas no SharePoint antes de validar os campos de escolha oficiais.

Arquivo criado:

- sharepoint/03_validacao_modelagem_listas.md

Próxima etapa:

- Validar os valores oficiais dos campos de escolha.

---

## Registro — Campos de Escolha

Data: 07/06/2026  
Status: Proposta inicial registrada

Arquivo criado:

- sharepoint/04_campos_de_escolha.md

Decisão registrada:

- Documentar os valores de escolha antes da criação real das listas.
- Manter os valores como proposta inicial até validação operacional.
- Não criar listas no SharePoint antes da validação desses valores.

Próxima etapa:

- Validar unidades, turnos, funções, tipos de ocorrência, status, prioridades e perfis de acesso.

---

## Registro — Fase 1 das Listas Essenciais

Data: 07/06/2026  
Status: Preparada para validação

Arquivo criado:

- sharepoint/05_fase1_listas_essenciais.md

Decisão registrada:

- Preparar a Fase 1 com as listas essenciais:
  - Usuarios
  - Plantoes
  - EquipePlantao
  - Ocorrencias
  - PendenciasOperacionais

Observação:

- Ainda não criar listas reais no SharePoint.
- Validar primeiro campos obrigatórios, valores de escolha e dados fictícios de teste.

Próxima etapa:

- Validar se a Fase 1 pode ser usada como base para criação manual das listas no Microsoft Lists / SharePoint.
