# V092 - Validação do padrão de layout e alturas do fluxo contínuo

Data/hora: 2026-06-20 22:37:04  
Projeto: Livro de Ocorrências Digital da Brigada de Incêndio  
Tela: scrDashboard  
Área: Livro do Plantão em fluxo contínuo

---

## Objetivo

Registrar a validação visual do padrão de layout e alturas dos blocos do Livro do Plantão no Power Apps.

A validação foi feita após ajuste bloco por bloco, usando como referência o padrão aprovado no bloco 0 e a correção visual aplicada no bloco 1.

---

## Decisão validada

O padrão oficial para containers do Livro do Plantão passa a ser:

Altura calculada por fórmula, com mínimo visual validado quando necessário.

---

## Blocos ajustados e validados

| Bloco | Nome técnico | Status |
|---|---|---|
| 0 | ctnLivroSecaoSelecaoPlantao | Validado |
| 1 | ctnLivroSecaoCabecalho | Validado |
| 2 | ctnLivroSecaoRecebimentoServico | Validado |
| 3 | ctnLivroSecaoEquipe | Validado |
| 4 | ctnLivroSecaoViaturasMateriais | Validado |
| 5 | ctnLivroSecaoInspecaoRotina | Validado |
| 6 | ctnLivroSecaoPotsRevisados | Validado |
| 7 | ctnLivroSecaoOcorrenciasPlantao | Validado |
| 8 | ctnLivroSecaoPendenciasOperacionais | Validado |
| 9 | ctnLivroSecaoRevisaoFinalizacao | Validado |

---

## Regras consolidadas

- Seções principais usam borda, fill, radius e padding padronizados.
- Containers verticais calculam altura pela soma dos filhos, gaps e paddings.
- Containers horizontais usam Max(...) dos filhos internos.
- Campos simples usam altura mínima visual de 82.
- Campos multiline médios usam mínimo visual de 110.
- Campos multiline grandes usam mínimo visual de 170.
- Blocos com indicadores e listas mantêm mínimo visual validado.
- Área de ações usa altura baseada no maior botão, com mínimo visual.
- Não usar X e Y em AutoLayout quando não forem necessários.
- Não usar altura fixa arbitrária em containers novos.

---

## Arquivo de padrão

docs/powerapps/54_padrao_layout_alturas_containers_powerapps.md

---

## Próxima etapa

V093 - validar fluxo real do Livro do Plantão com criação/carregamento de plantão, salvamento, finalização e reabertura controlada.
