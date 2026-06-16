# V076 - Ocorrências do Plantão no fluxo contínuo

## Objetivo

Registrar a validação visual da estrutura inicial da seção Ocorrências do Plantão dentro do Livro do Plantão em fluxo contínuo.

## Estrutura validada

A seção `ctnLivroSecaoOcorrenciasPlantao` foi ajustada para exibir:

1. Texto explicativo da seção.
2. Indicador de total de ocorrências do plantão.
3. Indicador de ocorrências abertas.
4. Indicador de ocorrências encerradas.
5. Lista das últimas ocorrências do plantão.
6. Mensagem de vazio para quando não houver ocorrências registradas.

## Controles criados ou ajustados

- `ctnLivroOcorrenciasBloco`
- `lblLivroOcorrenciasResumo`
- `ctnLivroOcorrenciasIndicadores`
- `ctnLivroOcorrenciasTotal`
- `ctnLivroOcorrenciasAbertas`
- `ctnLivroOcorrenciasEncerradas`
- `lblLivroOcorrenciasTotalTitulo`
- `lblLivroOcorrenciasTotalValor`
- `lblLivroOcorrenciasAbertasTitulo`
- `lblLivroOcorrenciasAbertasValor`
- `lblLivroOcorrenciasEncerradasTitulo`
- `lblLivroOcorrenciasEncerradasValor`
- `ctnLivroOcorrenciasLista`
- `lblLivroOcorrenciasListaTitulo`
- `galLivroOcorrenciasFluxoContinuo`
- `lblGalLivroOcorrenciaFluxoResumo`
- `lblLivroOcorrenciasVaziaFluxoContinuo`

## Validação visual

Validado por Warley em 16/06/2026.

Resultado:

- seção exibida corretamente no fluxo contínuo;
- indicadores exibidos corretamente;
- lista de últimas ocorrências carregando registros reais;
- seção 8 Pendências Operacionais aparece abaixo da seção 7;
- rolagem vertical preservada;
- nenhuma gravação em SharePoint foi implementada nesta etapa.

## Snapshot YAML

O snapshot atual do código YAML da tela principal foi atualizado após a validação da seção Ocorrências do Plantão.

Arquivos atualizados:

- `powerapps/source/scrDashboard.pa.yaml`
- `powerapps/source/snapshots/scrDashboard_V076_2026-06-16.pa.yaml`

## Observação

A V076 teve foco apenas na estrutura visual inicial de Ocorrências do Plantão no fluxo contínuo. Não houve alteração em Patch, listas SharePoint ou regras de salvamento.