---
name: Digital Fire Brigade Logbook
colors:
  surface: '#f7f9ff'
  surface-dim: '#d7dae0'
  surface-bright: '#f7f9ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f1f4f9'
  surface-container: '#ebeef3'
  surface-container-high: '#e5e8ee'
  surface-container-highest: '#e0e3e8'
  on-surface: '#181c20'
  on-surface-variant: '#3f484f'
  inverse-surface: '#2d3135'
  inverse-on-surface: '#eef1f6'
  outline: '#6f7881'
  outline-variant: '#bfc7d1'
  surface-tint: '#006492'
  primary: '#00628f'
  on-primary: '#ffffff'
  primary-container: '#007cb3'
  on-primary-container: '#fcfcff'
  inverse-primary: '#8cceff'
  secondary: '#1b6962'
  on-secondary: '#ffffff'
  secondary-container: '#a5ede3'
  on-secondary-container: '#216e66'
  tertiary: '#456500'
  on-tertiary: '#ffffff'
  tertiary-container: '#588000'
  on-tertiary-container: '#faffe8'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#cae6ff'
  primary-fixed-dim: '#8cceff'
  on-primary-fixed: '#001e2f'
  on-primary-fixed-variant: '#004b6f'
  secondary-fixed: '#a8f0e6'
  secondary-fixed-dim: '#8cd4ca'
  on-secondary-fixed: '#00201d'
  on-secondary-fixed-variant: '#00504a'
  tertiary-fixed: '#b8f649'
  tertiary-fixed-dim: '#9dd82c'
  on-tertiary-fixed: '#131f00'
  on-tertiary-fixed-variant: '#354e00'
  background: '#f7f9ff'
  on-background: '#181c20'
  surface-variant: '#e0e3e8'
typography:
  headline-lg:
    fontFamily: Hanken Grotesk
    fontSize: 32px
    fontWeight: '700'
    lineHeight: 40px
  headline-lg-mobile:
    fontFamily: Hanken Grotesk
    fontSize: 28px
    fontWeight: '700'
    lineHeight: 36px
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
  label-sm:
    fontFamily: Segoe UI
    fontSize: 11px
    fontWeight: '400'
    lineHeight: 14px
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
  header-height: 64px
  sidebar-width: 260px
---

## Brand & Style

The design system is engineered for the **Livro de Ocorrências Digital da Brigada de Incêndio**, a mission-critical tool for Eletronuclear. The brand personality is **authoritative, institutional, and highly disciplined**, reflecting the rigorous safety standards of a nuclear power facility. The target audience—firefighters and brigade leaders—requires an interface that prioritizes rapid data entry and clear status communication over aesthetic flair.

The design style is **Corporate / Modern**, characterized by a structured layout that seamlessly integrates into the Microsoft ecosystem (Power Apps and SharePoint). It avoids decorative elements, focusing instead on functional clarity through high-contrast typography, a rigid grid system, and an accessible accessibility-first approach. The visual narrative emphasizes stability and operational readiness, ensuring that critical information is never obscured by complex UI patterns.

## Colors

The color palette is strictly aligned with Eletronuclear’s visual identity to ensure institutional recognition.
- **Safety Blue (#0082BC)** serves as the primary action color, used for headers, primary buttons, and active navigation states.
- **Institutional Teal (#357E76)** is the secondary color, reserved for support elements and refined operational highlights.
- **Eco Green (#84BD00)** is the tertiary color, used exclusively for positive "Success" or "Normal" states.

The background uses a subtle **Surface Blue (#F7F9FF)** to reduce glare, while deep neutrals provide high-contrast text for accessibility. Status indicators (Success, Warning, Danger, Info) must always pair these colors with text-inclusive badges to support colorblind users and low-light environments.

## Typography

This design system employs a hierarchical font strategy: **Hanken Grotesk** is used for all headlines and titles to provide a sharp, contemporary, and professional institutional feel. **Open Sans** is the primary typeface for body text and labels, chosen for its exceptional legibility in data-heavy forms and lists. **Segoe UI** serves as the functional fallback to ensure perfect visual harmony within the Microsoft 365 environment.

All UI text must be in **Brazilian Portuguese**. Accessibility is paramount: font sizes never drop below 11px, and high-weight labels are used for emphasis instead of color alone. For mobile views, the top-level headlines scale down slightly to maintain layout integrity while preserving readability.

## Layout & Spacing

The layout follows a **Fixed Grid** philosophy optimized for the standard viewport sizes of laptops and tablets used in the field.
- **Desktop/Tablet:** A 12-column grid with a fixed left sidebar (260px) and a persistent top header (64px). Margins are set to 2rem (32px) to provide breathable space for technical data.
- **Mobile:** The layout reflows into a single-column view with 1rem (16px) margins.

The spacing rhythm is built on an 8px base unit. **Stack-md (1rem)** is the default vertical gap between form fields and card elements, while **Stack-lg (1.5rem)** separates major content sections. To facilitate Power Apps implementation, avoid complex nested layouts; prefer flat, card-based vertical galleries over wide, horizontally-scrolling tables.

## Elevation & Depth

Visual hierarchy is established through **Tonal Layers** rather than heavy shadows, ensuring compatibility with the flat design language of SharePoint.
- **Level 0 (Background):** Surface color (#F7F9FF).
- **Level 1 (Cards/Containers):** Pure white (#FFFFFF) with a 1px "Outline Variant" (#BFC7D1) border.
- **Level 2 (Active States/Popovers):** A very soft, low-opacity ambient shadow (0px 4px 12px rgba(0,0,0,0.08)) to indicate temporary interaction layers.

This "low-contrast outline" technique provides a crisp, professional interface that remains legible in high-glare environments. Interactive surfaces should use subtle tonal shifts (e.g., transitioning from Surface-Container to Surface-Container-High) on hover to provide feedback without visual clutter.

## Shapes

The shape language is **Soft (0.25rem)**, providing a slight refinement to the UI without appearing too casual or "bubbly."
- **Standard UI Elements:** (Buttons, Input Fields, Checkboxes) use 0.25rem (4px) corner radius.
- **Cards & Large Containers:** Use `rounded-lg` (0.5rem / 8px) to define major layout areas.
- **Badges/Status Chips:** Use `rounded-full` (9999px) for the characteristic "pill" shape, clearly distinguishing them from interactive buttons.

This geometric consistency ensures that the interface feels integrated with standard Microsoft Office and Power Platform components.

## Components

### Buttons
- **Primary:** Solid Safety Blue (#0082BC) with white text. 0.25rem radius.
- **Secondary:** Outline variant with Institutional Teal (#357E76) text and border.
- **Destructive:** Solid Error Red (#BA1A1A) with white text for critical actions like "Excluir Ocorrência."

### Status Badges
Every badge must include an icon and a text label.
- **Normal/Concluído:** Eco Green background, dark green text.
- **Atenção/Pendente:** Amber background, dark brown text.
- **Crítica/Fora de Operação:** Red background, white text.

### Inputs & Forms
Forms must use vertical stacking with labels positioned above the input field. Use standard "Segoe UI" for placeholder text to maintain a native Microsoft feel. Active focus states must use a 2px Safety Blue border.

### Cards
Cards are the primary container for the "Livro do Plantão" and "Ocorrências." They should feature a header with a 1px bottom border and contain technical metadata (e.g., "Sgt. Oliveira", "Unidade Central") in body-md typography.

## Global App Shell

For authenticated screens, the global shell is locked.

The design system tokens define colors, typography, spacing and component appearance only. They do not authorize the creation of a new application shell.

Every authenticated screen must clone the approved shell from:

**Ocorrências do Plantão — Shell Corrigido**

Only the main content area may change.

The following elements must not be redesigned, reinterpreted or regenerated:

* top header;
* left sidebar;
* search box;
* skip links;
* theme controls;
* contrast control;
* accessibility control;
* user/profile area;
* footer;
* active sidebar item style;
* page width;
* spacing;
* typography;
* icon style;
* border radius.

Do not create a new shell based only on DESIGN.md tokens.

Do not infer a new shell from the primary color.

Do not create a dark blue header unless the approved shell already uses it.

Do not use the page title or organization name as a replacement for the approved header title.

The approved header must show:

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

The header must not show:

* Eletronuclear - Brigada de Incêndio as the main header title;
* Brigada Digital;
* Fire Brigade;
* Logbook;
* icon-only controls when the approved shell uses text labels;
* notification icons not present in the approved shell;
* alternative dark blue header variations.

The sidebar must start directly with the navigation items:

* Dashboard;
* Livro do Plantão;
* Ocorrências;
* Pendências;
* POTs e Ciência;
* Histórico;
* Relatórios;
* Administração.

The sidebar must not include:

* user profile block;
* Sgt. Oliveira block;
* SO avatar block;
* Plantonista block;
* Configurações;
* Suporte;
* Sair;
* duplicated logo;
* duplicated app name;
* alternative sidebar branding.

The footer must follow the approved footer from:

**Inspeção de Rotina — Final Shell**

Footer content:

* Eletronuclear - Brigada de Incêndio;
* Suporte;
* Termos de Uso;
* Privacidade.

For Google Stitch visual prototypes, if the footer changes style or position, use the approved visual command:

“Crie um rodapé igual e na mesma posição que o da tela Inspeção de Rotina, colado à borda inferior da tela.”

Then:

“Agora aplique exatamente a mesma formatação do rodapé da tela Inspeção de Rotina.”

For future real implementation, the footer must be rebuilt in the normal page flow.

The footer must not cover content.

Do not use:

* black footer;
* floating footer;
* footer overlay;
* footer inside the form;
* footer inside cards;
* footer in the middle of lists;
* fixed bottom action bar;
* sticky action bar;
* fixed bottom-0;
* z-index overlay for footer;
* md:ml-64 as the only layout solution for the real implementation.

Bottom action buttons must remain inside the main page content, after the form sections.

Do not create a fixed bottom action bar.

Approved bottom button pattern:

* Cancelar;
* Salvar rascunho;
* Criar pendência;
* Registrar ocorrência;
* Finalizar Livro do Plantão.

Buttons must appear before the footer and must not be fixed to the viewport.