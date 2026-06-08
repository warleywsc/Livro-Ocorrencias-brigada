# Prompt Mestre — Livro de Ocorrências Digital da Brigada de Incêndio

Use este texto como memória operacional principal do projeto.

Projeto: **Livro de Ocorrências Digital da Brigada de Incêndio**.

Estou criando um aplicativo institucional para a Brigada de Incêndio, inicialmente como MVP visual no Google Stitch, com futura implementação em Power Apps, Microsoft Lists e SharePoint.

## Nome oficial

Livro de Ocorrências Digital da Brigada de Incêndio.

## Não usar

- Brigada Digital
- Fire Brigade
- Logbook
- Occurrences
- Pendencies
- New Entry

## Idioma

Português do Brasil.

## Status atual

O MVP visual foi concluído e aprovado com 15 telas.

## Telas aprovadas

1. Login / Identificação do Usuário
2. Dashboard Operacional
3. Registro do Plantão
4. Equipe do Plantão
5. Conferência de Viaturas e Materiais
6. Inspeção de Rotina
7. Finalização do Livro do Plantão
8. Ocorrências do Plantão
9. Nova Ocorrência
10. Pendências Operacionais
11. Nova Pendência
12. POTs Revisados e Ciência
13. Histórico e Relatório
14. Relatórios e Administração
15. Administração

## Regras visuais e arquiteturais

- O shell global foi aprovado visualmente, mas houve muita dificuldade com variações no Stitch.
- Na implementação real, header, sidebar e footer devem ser componentes únicos reutilizáveis.
- Não usar o HTML exportado como arquitetura final sem refatoração.
- O footer deve ficar no fluxo normal da página, nunca fixed, sticky, absolute ou sobreposto.
- Os botões finais devem ficar antes do footer, nunca em barra fixa inferior.
- Header, menu lateral e rodapé devem ser padronizados em componentes reutilizáveis.

## Componentes obrigatórios

- AppShell
- Header
- Sidebar
- Footer
- ShiftSummary
- StatusBadge
- ActionButtons
- Card
- SectionCard
- FilterBar
- TimelineCard
- FormSection

## Menu lateral oficial

- Dashboard
- Livro do Plantão
- Ocorrências
- Pendências
- POTs e Ciência
- Histórico
- Relatórios
- Administração

## Dados fictícios usados no protótipo

- Data do plantão: 06/06/2026
- Turno: Dia
- Unidade: Unidade Central
- Responsável / Líder: Sgt. Oliveira
- Status do Livro: Em preenchimento

## Principais regras funcionais

- Registrar livro de plantão.
- Registrar passagem de serviço.
- Registrar equipe do plantão.
- Conferir viaturas e materiais.
- Registrar inspeção de rotina.
- Finalizar livro do plantão.
- Registrar ocorrências.
- Gerar pendências operacionais.
- Acompanhar pendências entre plantões.
- Controlar POTs revisados e ciência da equipe.
- Consultar histórico.
- Gerar relatórios.
- Administrar usuários, permissões, cadastros, parâmetros e integrações.

## Estrutura de dados inicial

- Usuarios
- Plantoes
- EquipePlantao
- ViaturasMateriais
- ConferenciasViaturasMateriais
- InspecoesRotina
- Ocorrencias
- PendenciasOperacionais
- POTs
- CienciaPOT
- ParametrosSistema
- Auditoria

## Perfis sugeridos

- Leitura
- Operador
- Líder
- Supervisor
- Administrador

## Próxima fase

Consolidar o projeto para implementação real:

1. Documento de escopo funcional.
2. Estrutura de dados para Microsoft Lists / SharePoint.
3. Fluxo de navegação.
4. Regras de permissões.
5. Componentes reutilizáveis.
6. Plano de implementação por etapas.
7. Prompt mestre para continuar o desenvolvimento técnico.

Antes de sugerir código ou tecnologia, organizar e validar documentação, listas, permissões e critérios de aceite.
