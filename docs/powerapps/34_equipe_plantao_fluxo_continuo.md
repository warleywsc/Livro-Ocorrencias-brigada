# V070 - Equipe do Plantão no fluxo contínuo

## Objetivo

Registrar a validação visual da estrutura inicial da seção Equipe do Plantão dentro do Livro do Plantão em fluxo contínuo.

## Estrutura validada

A seção ctnLivroSecaoEquipe foi ajustada para exibir:

1. Texto explicativo da equipe vinculada ao plantão atual.
2. Lista dos integrantes cadastrados para o plantão.
3. Mensagem de vazio para quando não houver integrantes cadastrados.

## Controles criados ou ajustados

- ctnLivroEquipeResumo
- ctnLivroEquipeLista
- lblLivroEquipeResumo
- lblLivroEquipeListaTitulo
- galLivroEquipeFluxoContinuo
- lblGalLivroEquipeFluxoResumo
- lblLivroEquipeVaziaFluxoContinuo

## Fórmula principal da galeria

A galeria galLivroEquipeFluxoContinuo usa como base os integrantes vinculados ao plantão atual:

PowerFx:

Filter(
    EquipePlantao;
    Plantao.Id = varPlantaoAtual.ID
)

## Dados exibidos na validação

- Líder Teste 01 | Líder | Brigada de Incêndio
- Presença: Presente
- Bombeiro Teste 01 | Bombeiro | Angra 1
- Presença: Presente

## Validação visual

Validado por Warley em 15/06/2026.

Resultado:

- seção exibida corretamente no fluxo contínuo;
- integrantes carregados corretamente da lista EquipePlantao;
- layout legível e alinhado;
- rolagem vertical preservada;
- nenhuma gravação em SharePoint foi implementada nesta etapa.

## Observação

A V070 teve foco apenas na exibição inicial da Equipe do Plantão. Não houve alteração em Patch, listas SharePoint ou regras de salvamento.