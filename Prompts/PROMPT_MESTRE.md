# Prompt Mestre ÔÇö Livro de Ocorr├¬ncias Digital da Brigada de Inc├¬ndio

Use este texto como mem├│ria operacional principal do projeto.

Projeto: **Livro de Ocorr├¬ncias Digital da Brigada de Inc├¬ndio**.

Estou criando um aplicativo institucional para a Brigada de Inc├¬ndio, inicialmente como MVP visual no Google Stitch, com futura implementa├º├úo em Power Apps, Microsoft Lists e SharePoint.

## Nome oficial

Livro de Ocorr├¬ncias Digital da Brigada de Inc├¬ndio.

## N├úo usar

- Brigada Digital
- Fire Brigade
- Logbook
- Occurrences
- Pendencies
- New Entry

## Idioma

Portugu├¬s do Brasil.

## Status atual

O MVP visual foi conclu├¡do e aprovado com 15 telas.

## Telas aprovadas

1. Login / Identifica├º├úo do Usu├írio
2. Dashboard Operacional
3. Registro do Plant├úo
4. Equipe do Plant├úo
5. Confer├¬ncia de Viaturas e Materiais
6. Inspe├º├úo de Rotina
7. Finaliza├º├úo do Livro do Plant├úo
8. Ocorr├¬ncias do Plant├úo
9. Nova Ocorr├¬ncia
10. Pend├¬ncias Operacionais
11. Nova Pend├¬ncia
12. POTs Revisados e Ci├¬ncia
13. Hist├│rico e Relat├│rio
14. Relat├│rios e Administra├º├úo
15. Administra├º├úo

## Regras visuais e arquiteturais

- O shell global foi aprovado visualmente, mas houve muita dificuldade com varia├º├Áes no Stitch.
- Na implementa├º├úo real, header, sidebar e footer devem ser componentes ├║nicos reutiliz├íveis.
- N├úo usar o HTML exportado como arquitetura final sem refatora├º├úo.
- O footer deve ficar no fluxo normal da p├ígina, nunca fixed, sticky, absolute ou sobreposto.
- Os bot├Áes finais devem ficar antes do footer, nunca em barra fixa inferior.
- Header, menu lateral e rodap├® devem ser padronizados em componentes reutiliz├íveis.

## Componentes obrigat├│rios

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
- Livro do Plant├úo
- Ocorr├¬ncias
- Pend├¬ncias
- POTs e Ci├¬ncia
- Hist├│rico
- Relat├│rios
- Administra├º├úo

## Dados fict├¡cios usados no prot├│tipo

- Data do plant├úo: 06/06/2026
- Turno: Dia
- Unidade: Unidade Central
- Respons├ível / L├¡der: Sgt. Oliveira
- Status do Livro: Em preenchimento

## Principais regras funcionais

- Registrar livro de plant├úo.
- Registrar passagem de servi├ºo.
- Registrar equipe do plant├úo.
- Conferir viaturas e materiais.
- Registrar inspe├º├úo de rotina.
- Finalizar livro do plant├úo.
- Registrar ocorr├¬ncias.
- Gerar pend├¬ncias operacionais.
- Acompanhar pend├¬ncias entre plant├Áes.
- Controlar POTs revisados e ci├¬ncia da equipe.
- Consultar hist├│rico.
- Gerar relat├│rios.
- Administrar usu├írios, permiss├Áes, cadastros, par├ómetros e integra├º├Áes.

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
- L├¡der
- Supervisor
- Administrador

## Pr├│xima fase

Consolidar o projeto para implementa├º├úo real:

1. Documento de escopo funcional.
2. Estrutura de dados para Microsoft Lists / SharePoint.
3. Fluxo de navega├º├úo.
4. Regras de permiss├Áes.
5. Componentes reutiliz├íveis.
6. Plano de implementa├º├úo por etapas.
7. Prompt mestre para continuar o desenvolvimento t├®cnico.

Antes de sugerir c├│digo ou tecnologia, organizar e validar documenta├º├úo, listas, permiss├Áes e crit├®rios de aceite.
