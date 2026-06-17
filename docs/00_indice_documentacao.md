# Índice da Documentação do Projeto

**Atualizado em:** 2026-06-17 20:55:19

## 1. Documentos principais

- README.md
- docs/00_controle_do_projeto.md
- docs/01_escopo_funcional.md
- docs/02_fluxo_navegacao.md
- docs/03_permissoes.md
- docs/04_componentes_reutilizaveis.md
- docs/05_plano_implementacao.md
- docs/06_checklist_validacao.md
- docs/07_regras_operacionais_livro_plantao.md

## 2. Power Apps

A documentação ativa de Power Apps deve ficar em:

- docs/powerapps

A pasta powerapps deve ser usada preferencialmente para fonte, snapshots e arquivos técnicos do aplicativo, não para documentação solta em Markdown.

## 3. SharePoint

A documentação ativa de SharePoint deve ficar em:

- sharepoint

Documento consolidado de execução manual:

- sharepoint/06_execucao_manual_fase1_consolidado.md

## 4. Prompts

Prompts ativos:

- prompts/PROMPT_MESTRE.md
- prompts/PROMPT_MESTRE_TECNICO_POWERAPPS.md
- prompts/PROMPT_MVP_STITCH.md

Versões antigas de prompts devem ficar arquivadas em:

- docs/_arquivo_md_redundantes

## 5. Design

Arquivos exportados do Stitch permanecem em:

- design

Esses arquivos são referência visual/histórica e não devem ser usados como fonte operacional principal quando houver documentação mais atual em docs ou sharepoint.

## 6. Arquivo de redundâncias

Arquivos antigos, vazios, duplicados ou substituídos por documentos consolidados devem ser movidos para:

- docs/_arquivo_md_redundantes

Nada deve ser apagado diretamente sem backup ou histórico no Git.

## 7. Regra de atualização

Sempre que uma etapa técnica for concluída:

1. registrar decisão/validação em docs/powerapps, sharepoint ou docs;
2. atualizar docs/00_controle_do_projeto.md;
3. gerar commit com padrão Vnnn - descrição;
4. manter este índice atualizado quando houver reorganização documental.
