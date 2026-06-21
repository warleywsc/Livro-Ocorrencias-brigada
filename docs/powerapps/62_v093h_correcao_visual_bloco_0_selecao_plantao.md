# V093H - Correção visual do Bloco 0 - Seleção do Plantão

DATA_HORA=2026-06-20 23:20:33

## Motivo

O Bloco 0 estava funcional, mas fugiu ao padrão visual dos demais blocos do Livro do Plantão.

Na tela, a linha dos campos de seleção ficou comprimida/cortada, deixando Data, Turno, Posto de Serviço e Plantão Extra fora do padrão de altura usado nos demais campos.

## Ação

Foi gerado um patch YAML apenas para o controle:

- ctnLivroSecaoSelecaoPlantao

## O que foi padronizado

- Altura da seção com Max(..., 338).
- Título com altura 36.
- Resumo com altura 52.
- Linha de campos com altura mínima 90.
- Campos simples com altura mínima 82.
- Inputs/dropdowns/datepicker com altura 42.
- Linha de ações com altura mínima 76.
- Botões com altura 52.
- Status com altura 58.

## Arquivo gerado

powerapps\source\patches\V093\ctnLivroSecaoSelecaoPlantao_V093H_PADRAO_VISUAL.pa.yaml

## Observação

Este patch deve ser colado apenas no Power Apps Studio, substituindo o Bloco 0 atual.
Depois da validação visual, o YAML completo do Power Apps Studio deve ser sincronizado novamente para o VS Code.
