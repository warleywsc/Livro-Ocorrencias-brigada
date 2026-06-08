# Livro de Ocorrências Digital da Brigada de Incêndio

Projeto institucional para criação do **Livro de Ocorrências Digital da Brigada de Incêndio**, inicialmente consolidado a partir do MVP visual aprovado no Google Stitch e preparado para futura implementação em **Power Apps**, **Microsoft Lists** e **SharePoint**.

## Estado atual

- MVP visual aprovado com 15 telas.
- Exportação principal do Stitch incluída em `design/export_stitch/`.
- Prints organizados em `design/prints_stitch/`.
- Esta estrutura serve como base documental e técnica antes da implementação real.

## Regra principal

O HTML exportado do Stitch é apenas referência visual. A implementação real deve ser refatorada com componentes reutilizáveis, listas estruturadas e regras claras de permissão.

## Estrutura do projeto

```text
livro-ocorrencias-brigada/
├─ docs/
├─ design/
│  ├─ export_stitch/
│  └─ prints_stitch/
├─ sharepoint/
├─ powerapps/
├─ prompts/
├─ scripts/
└─ README.md
```

## Próxima etapa

Validar a estrutura de dados das listas em `sharepoint/01_listas_e_campos.md` antes de criar qualquer lista real no SharePoint.
