---
name: Livro de Ocorrências Digital da Brigada de Incêndio
colors:
  surface: '#f9f9fc'
  surface-dim: '#d9dadd'
  surface-bright: '#f9f9fc'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f3f3f7'
  surface-container: '#edeef1'
  surface-container-high: '#e7e8eb'
  surface-container-highest: '#e2e2e6'
  on-surface: '#191c1e'
  on-surface-variant: '#40484e'
  inverse-surface: '#2e3133'
  inverse-on-surface: '#f0f0f4'
  outline: '#70787f'
  outline-variant: '#c0c7d0'
  surface-tint: '#076491'
  primary: '#00496c'
  on-primary: '#ffffff'
  primary-container: '#00628f'
  on-primary-container: '#addaff'
  inverse-primary: '#8bceff'
  secondary: '#1b6962'
  on-secondary: '#ffffff'
  secondary-container: '#a5ede4'
  on-secondary-container: '#216d66'
  tertiary: '#334c00'
  on-tertiary: '#ffffff'
  tertiary-container: '#466601'
  on-tertiary-container: '#bbe377'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#cae6ff'
  primary-fixed-dim: '#8bceff'
  on-primary-fixed: '#001e2f'
  on-primary-fixed-variant: '#004b6f'
  secondary-fixed: '#a8f0e7'
  secondary-fixed-dim: '#8cd3ca'
  on-secondary-fixed: '#00201d'
  on-secondary-fixed-variant: '#00504a'
  tertiary-fixed: '#c8f082'
  tertiary-fixed-dim: '#acd369'
  on-tertiary-fixed: '#131f00'
  on-tertiary-fixed-variant: '#354e00'
  background: '#f9f9fc'
  on-background: '#191c1e'
  surface-variant: '#e2e2e6'
typography:
  headline-lg:
    fontFamily: Hanken Grotesk
    fontSize: 32px
    fontWeight: '700'
    lineHeight: 40px
  headline-md:
    fontFamily: Hanken Grotesk
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
  headline-sm:
    fontFamily: Hanken Grotesk
    fontSize: 20px
    fontWeight: '600'
    lineHeight: 28px
  title-lg:
    fontFamily: Hanken Grotesk
    fontSize: 18px
    fontWeight: '500'
    lineHeight: 24px
  body-lg:
    fontFamily: Open Sans
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  body-md:
    fontFamily: Open Sans
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
  label-lg:
    fontFamily: Open Sans
    fontSize: 12px
    fontWeight: '600'
    lineHeight: 16px
    letterSpacing: 0.5px
  headline-lg-mobile:
    fontFamily: Hanken Grotesk
    fontSize: 28px
    fontWeight: '700'
    lineHeight: 36px
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  margin-mobile: 1rem
  margin-desktop: 2rem
  gutter: 1rem
  stack-sm: 0.5rem
  stack-md: 1rem
  stack-lg: 1.5rem
---

-------

# Livro de Ocorrências Digital da Brigada de Incêndio

Institutional design system based on Eletronuclear’s visual identity, optimized for Google Stitch prototypes and future implementation in Power Apps, Microsoft Lists and SharePoint.

All visible interface text must be written in Brazilian Portuguese.

The app must work as an internal digital logbook for the Fire Brigade, covering shift records, service handover, operational pending items, structured occurrence records, POT acknowledgement, history and reports.

## Visual Identity

The system uses Eletronuclear’s canonical colors to ensure authority, institutional recognition and operational clarity:

* **Safety Blue (#0082BC):** Main color for primary actions, headers, active navigation states and key highlights.
* **Institutional Teal (#357E76):** Secondary color for support elements, calm operational emphasis and refined visual details.
* **Eco Green (#84BD00):** Tertiary color for normal, verified or completed states, always combined with readable text.

The interface must feel corporate, clean, accessible and compatible with Microsoft 365, SharePoint and Power Apps.

Avoid generic “fire brigade management” visuals. The product focus is the operational shift logbook, not a generic emergency management dashboard.

The name **Brigada Digital** must not be used. The product name is **Livro de Ocorrências Digital da Brigada de Incêndio**.

## Operational Statuses

For the Fire Brigade context, technical clarity is essential. Status indicators must combine color, icon and readable text to support accessibility:

* **Success:** Normal operation, verified, completed or resolved.
* **Warning:** Attention required, observation, pending action or maintenance follow-up.
* **Danger:** Critical condition, out of service or immediate action required.
* **Info:** Informational state, guidance, in progress or current workflow status.

Status badges must always include visible text. Do not rely only on color.

Recommended status labels in Brazilian Portuguese:

* Normal
* Em preenchimento
* Aberta
* Em andamento
* Em acompanhamento
* Aguardando manutenção
* Pendente
* Concluído
* Normalizada
* Não verificado
* Com observação
* Atenção
* Crítica
* Fora de operação

## Accessibility and Modes

The design provides native support for:

* **Dark Theme:** Reduces visual fatigue during night shifts.
* **High Contrast:** Supports accessibility for different user profiles.
* **Accessibility Bar:** Present across authenticated screens for quick access to theme, contrast and accessibility controls.

Accessibility controls must remain consistent in the top header across all authenticated screens.

The interface must maintain:

* readable contrast;
* clear focus states;
* visible labels;
* large enough click and tap targets;
* badges with text;
* forms with labels and placeholders;
* controls that are understandable without depending only on icons.

Avoid low contrast, cropped text, hidden actions, icon-only critical buttons and overlapping elements.

## Implementation Guidelines

Focused on feasibility for the Microsoft ecosystem, especially Power Apps and SharePoint:

* Use **Hanken Grotesk** for titles and **Open Sans** with **Segoe UI** fallback for body text.
* Use cards, galleries, simple forms, badges, filters and buttons to support future implementation.
* Prefer vertical cards and galleries over wide tables.
* Use simple dropdowns, checkboxes, toggles and text fields.
* Keep filters clear and compact.
* Avoid complex nested layouts, advanced animations, fragile fixed positioning and excessive visual effects.

The app must be readable on desktop, notebook and tablet.

## Global App Shell

For authenticated screens, the global shell must remain locked and consistent.

Every new authenticated screen must clone the approved shell from **Ocorrências do Plantão — Shell Corrigido**.

The following elements must not be redesigned between screens:

* top header;
* left sidebar;
* search box;
* skip links;
* theme controls;
* contrast control;
* accessibility control;
* user/profile area;
* footer;
* active menu style;
* page width;
* spacing;
* typography;
* icon style;
* border radius.

Only the main content area may change.

The header must show:

* Livro de Ocorrências Digital;
* Ir para conteúdo;
* Ir para menu;
* Buscar...;
* Claro;
* Escuro;
* Alto contraste;
* Acessibilidade;
* Sgt. Oliveira;
* Líder de Brigada.

The sidebar must start directly with the navigation items:

* Dashboard;
* Livro do Plantão;
* Ocorrências;
* Pendências;
* POTs e Ciência;
* Histórico;
* Relatórios;
* Administração.

Do not add duplicated identity blocks, user profile blocks, Plantonista blocks, Configurações, Suporte or Sair inside the sidebar.

The footer must follow the approved footer from **Inspeção de Rotina — Final Shell** and must show:

* Eletronuclear - Brigada de Incêndio;
* Suporte;
* Termos de Uso;
* Privacidade.

For the visual prototype in Google Stitch, if the footer changes style or position, use this instruction:

* “Crie um rodapé igual e na mesma posição que o da tela Inspeção de Rotina, colado à borda inferior da tela.”
* “Agora aplique a mesma formatação do rodapé da tela Inspeção de Rotina.”

For future real implementation, the footer must be recreated in the normal page flow and must not depend on fixed positioning.

## Screen Creation Workflow

Create one screen at a time.

Do not generate multiple screens in the same step unless explicitly requested.

For each new screen:

* clone the approved Global App Shell;
* change only the main content area;
* keep all visible UI text in Brazilian Portuguese;
* keep the footer visually equal to the approved Inspeção de Rotina footer;
* stop after creating the requested screen.

Do not recreate approved screens.

Only proceed to the next screen after the previous screen is approved.

## MVP Scope

The visual MVP must cover:

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

Avoid expanding the MVP beyond this scope.

## Operational Content Rules

The app must clearly separate:

* occurrence records created during the current shift;
* operational pending items that remain open between shifts;
* POTs that were revised and require acknowledgement;
* historical records and reports.

Use objective, technical and professional language.

Examples must be plausible for the Fire Brigade context:

* Sgt. Oliveira
* Unidade Central
* Angra 1
* Angra 2
* Angra 3
* Rede de incêndio
* Detecção e alarme
* Extintores
* Manutenção Mecânica
* Elétrica
* Brigada de Incêndio

Avoid informal language, generic operational terms and unnecessary scope expansion.

## Visual Quality Checklist

Before approving any screen, verify:

* the shell matches the approved Global App Shell;
* the header was not redesigned;
* the sidebar was not redesigned;
* the active menu item is correct;
* the footer matches the approved Inspeção de Rotina footer;
* there are no black bars;
* there are no duplicated titles;
* there is no “Brigada Digital” text;
* there are no English UI labels;
* cards are readable;
* filters are simple;
* no card is nested inside another card;
* no text is broken vertically;
* no footer overlaps content;
* the layout is feasible for Power Apps.