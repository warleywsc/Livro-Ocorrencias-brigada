# Padrão de layout e alturas — Livro do Plantão / Power Apps

Projeto: Livro de Ocorrências Digital da Brigada de Incêndio.  
Versão de consolidação: V092.  
Finalidade: padronizar a construção dos blocos do fluxo contínuo do Livro do Plantão no Power Apps, evitando cortes, espaços sobrando e alturas fixas sem critério.

---

## 1. Regra geral aprovada

Todo container que envolve elementos deve ter altura calculada pela soma dos elementos internos, dos espaçamentos e dos paddings.

Regra geral:

    Altura do container =
    PaddingTop + PaddingBottom
    + soma das alturas dos controles internos
    + soma dos gaps entre os controles internos

Quando o Power Apps cortar visualmente os elementos, aplicar Max(...) com altura mínima visual validada.

Exemplo Power Fx:

    Max(
        Self.PaddingTop + Self.PaddingBottom +
        Controle1.Height +
        Controle2.Height +
        Self.LayoutGap,
        82
    )

---

## 2. Padrão para seção principal vertical

Usar para blocos do fluxo contínuo do Livro do Plantão.

Propriedades padrão YAML:

    LayoutDirection: =LayoutDirection.Vertical
    LayoutAlignItems: =LayoutAlignItems.Stretch
    FillPortions: =0
    LayoutGap: =10
    PaddingTop: =12
    PaddingBottom: =12
    PaddingLeft: =16
    PaddingRight: =16
    RadiusBottomLeft: =8
    RadiusBottomRight: =8
    RadiusTopLeft: =8
    RadiusTopRight: =8
    BorderColor: =ColorValue("#D6E4EC")
    BorderThickness: =1
    Fill: =ColorValue("#F9FAFB")
    Width: =Parent.Width

Fórmula padrão:

    Max(
        Self.PaddingTop + Self.PaddingBottom +
        lblTitulo.Height +
        ctnLinha1.Height +
        ctnLinha2.Height +
        (2 * Self.LayoutGap),
        ALTURA_MINIMA_VISUAL
    )

Alturas mínimas visuais validadas:

| Tipo de seção | Altura mínima sugerida |
|---|---:|
| Título + duas linhas de campos simples | 238 |
| Título + dois campos multiline | 300 |
| Título + status + campo multiline | 414 |
| Título + indicadores + lista | 444 a 500 |
| Revisão + status + observações + ações | 500 |

---

## 3. Título de seção

    Height: =36
    Color: =ColorValue("#0B5F8A")
    Font: =Font.'Segoe UI'
    FontWeight: =FontWeight.Semibold
    Size: =16
    AlignInContainer: =AlignInContainer.Stretch
    Width: =Parent.Width - Parent.PaddingLeft - Parent.PaddingRight

---

## 4. Linha horizontal de campos

    LayoutDirection: =LayoutDirection.Horizontal
    LayoutAlignItems: =LayoutAlignItems.Stretch
    FillPortions: =0
    LayoutGap: =12
    LayoutMinHeight: =16
    LayoutMinWidth: =16
    Width: =Parent.Width - Parent.PaddingLeft - Parent.PaddingRight

Fórmula padrão:

    Max(
        Self.PaddingTop + Self.PaddingBottom +
        Max(
            ctnCampo1.Height,
            ctnCampo2.Height,
            ctnCampo3.Height
        ),
        82
    )

---

## 5. Container de campo simples

Campo simples = label + TextInput de uma linha, Dropdown, DatePicker ou ComboBox.

    LayoutDirection: =LayoutDirection.Vertical
    LayoutAlignItems: =LayoutAlignItems.Stretch
    FillPortions: =0
    LayoutGap: =2
    PaddingTop: =4
    PaddingBottom: =4
    PaddingLeft: =8
    PaddingRight: =8
    LayoutMinHeight: =16
    LayoutMinWidth: =16

Fórmula validada:

    Max(Self.PaddingTop + Self.PaddingBottom + 24 + 42 + Self.LayoutGap, 82)

Quando a label tiver 22 px:

    Max(Self.PaddingTop + Self.PaddingBottom + 22 + 42 + Self.LayoutGap, 82)

Dimensões internas:

| Elemento | Altura |
|---|---:|
| Label de campo simples | 22 ou 24 |
| TextInput de uma linha | 42 |
| Dropdown | 42 |
| DatePicker | 42 |
| Gap entre label e controle | 2 |
| Padding superior/inferior | 4 + 4 |
| Altura mínima visual | 82 |

---

## 6. TextInput de uma linha

    Height: =42
    Size: =11
    PaddingTop: =6
    PaddingBottom: =6
    PaddingLeft: =8
    PaddingRight: =8
    BorderColor: =ColorValue("#D6E4EC")
    BorderThickness: =1
    Fill: =Color.White
    Color: =ColorValue("#1F2937")
    Font: =Font.'Segoe UI'
    Width: =Parent.Width

---

## 7. Dropdown

    Height: =42
    Size: =12
    PaddingTop: =5
    PaddingBottom: =5
    PaddingLeft: =8
    PaddingRight: =5
    BorderColor: =ColorValue("#D6E4EC")
    Fill: =ColorValue("#F9FAFB")
    Color: =ColorValue("#1F2937")
    ChevronBackground: =ColorValue("#F9FAFB")
    ChevronFill: =ColorValue("#1F2937")
    SelectionFill: =ColorValue("#0082BC")
    SelectionColor: =Color.White
    Width: =Parent.Width

---

## 8. Campo multiline

    LayoutDirection: =LayoutDirection.Vertical
    LayoutAlignItems: =LayoutAlignItems.Stretch
    FillPortions: =0
    LayoutGap: =4
    PaddingTop: =8
    PaddingBottom: =8
    PaddingLeft: =8
    PaddingRight: =8
    Width: =Parent.Width - Parent.PaddingLeft - Parent.PaddingRight

Fórmula para multiline médio:

    Max(
        Self.PaddingTop + Self.PaddingBottom +
        lblCampoMultiline.Height +
        txtCampoMultiline.Height +
        Self.LayoutGap,
        110
    )

Fórmula para multiline grande:

    Max(
        Self.PaddingTop + Self.PaddingBottom +
        lblCampoMultiline.Height +
        txtCampoMultiline.Height +
        Self.LayoutGap,
        170
    )

Dimensões:

| Elemento | Altura |
|---|---:|
| Label multiline | 24 |
| TextInput multiline médio | 72 |
| TextInput multiline grande | 126 |
| Gap | 4 |
| Padding superior/inferior | 8 + 8 |
| Mínimo multiline médio | 110 |
| Mínimo multiline grande | 170 |

---

## 9. Área de botões

    LayoutDirection: =LayoutDirection.Horizontal
    LayoutAlignItems: =LayoutAlignItems.Center
    FillPortions: =0
    LayoutGap: =12
    PaddingTop: =8
    PaddingBottom: =8
    PaddingLeft: =8
    PaddingRight: =8
    Width: =Parent.Width - Parent.PaddingLeft - Parent.PaddingRight

Fórmula:

    Max(
        Self.PaddingTop + Self.PaddingBottom +
        Max(
            btnAcao1.Height,
            btnAcao2.Height,
            btnAcao3.Height
        ),
        76
    )

---

## 10. Distância inferior

A distância entre a borda inferior do último elemento e a borda inferior do container deve ser controlada por PaddingBottom.

Padrões:

| Container | PaddingBottom |
|---|---:|
| Seção principal | 12 |
| Campo simples | 4 |
| Multiline | 8 |
| Área de botões | 8 |

Não compensar espaço inferior aumentando Height manualmente sem fórmula.

---

## 11. Decisão operacional

A partir da V092, o padrão oficial é:

Altura calculada por fórmula, com mínimo visual validado quando necessário.

Altura fixa arbitrária não deve ser usada em containers novos.

Altura fixa é aceitável em controles internos como labels, inputs, dropdowns, botões, cards de galeria e galerias quando fizer parte do padrão visual.
