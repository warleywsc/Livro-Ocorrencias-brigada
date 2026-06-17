# V081 - Configuração de campos e padronização do layout final do Livro do Plantão

**Data:** 2026-06-17 09:38:50  
**Etapa:** V081 - Configurar campos do Livro do Plantão para carregar dados das colunas de Plantoes e padronizar o layout visual final do fluxo contínuo.

## 1. Objetivo

Registrar a validação visual e técnica do fluxo contínuo do **Livro do Plantão** no Power Apps.

A etapa V081 consolidou o layout final das seções do Livro do Plantão, ajustou os campos ligados à lista **Plantoes** e validou a exibição das galerias de equipe, ocorrências e pendências relacionadas ao plantão atual.

## 2. Contexto

Após a criação das colunas operacionais na lista **Plantoes**, as seções do Livro do Plantão foram revisadas no Power Apps Studio.

A construção passou a seguir a estratégia de reconstrução por blocos YAML completos:

- apagar o componente antigo;
- colar o bloco corrigido abaixo de **ctnLivroPlantaoFluxoContinuo**;
- validar visualmente;
- corrigir nomes duplicados criados automaticamente pelo Power Apps;
- manter os nomes oficiais dos componentes sem sufixos como _1, _2 ou similares.

## 3. Tela principal

Tela alterada no Power Apps:

- scrDashboard

Container principal do fluxo contínuo:

- ctnLivroPlantaoFluxoContinuo

## 4. Seções validadas

Foram validadas visualmente as seguintes seções do Livro do Plantão:

1. Cabeçalho do Plantão
2. Recebimento do Serviço
3. Equipe do Plantão
4. Conferência de Viaturas e Materiais
5. Inspeção de Rotina
6. POTS Revisados
7. Ocorrências do Plantão
8. Pendências Operacionais
9. Revisão e Finalização

## 5. Componentes principais revisados

Componentes revisados e padronizados:

- ctnLivroSecaoCabecalho
- ctnLivroSecaoRecebimentoServico
- ctnLivroSecaoEquipe
- ctnLivroSecaoViaturasMateriais
- ctnLivroSecaoInspecaoRotina
- ctnLivroSecaoPotsRevisados
- ctnLivroSecaoOcorrenciasPlantao
- ctnLivroSecaoPendenciasOperacionais
- ctnLivroSecaoRevisaoFinalizacao

## 6. Campos carregados da lista Plantoes

Foram usados campos de **varPlantaoAtual** para carregar dados da lista **Plantoes**:

- CodigoPlantao
- DataPlantao
- Turno
- PostoServico
- StatusLivro
- LiderResponsavelAtual
- PassagemServico
- ResumoOperacional
- StatusViaturas
- StatusMateriais
- StatusGeralConferencia
- ObservacoesConferencia
- StatusRondas
- StatusAreasOperacionais
- StatusAnormalidades
- ObservacoesInspecaoRotina
- StatusPotsRevisados
- StatusCienciaEquipePots
- StatusGeralPots
- ObservacoesPots
- RevisaoLivro
- PendenciasCriticas
- LiberacaoFinal
- ObservacoesRevisaoFinalizacao

## 7. Galerias validadas

### 7.1 Equipe do Plantão

Galeria:

- galLivroEquipeFluxoContinuo

Origem:

- EquipePlantao

Filtro validado:

Filter(
    EquipePlantao,
    Plantao.Id = varPlantaoAtual.ID
)

A galeria passou a exibir os integrantes vinculados ao plantão atual, sem rolagem interna indevida e com altura ajustada ao conteúdo.

### 7.2 Ocorrências do Plantão

Galeria:

- galLivroOcorrenciasFluxoContinuo

Origem:

- Ocorrencias

Filtro validado:

Filter(
    Ocorrencias,
    Plantao.Id = varPlantaoAtual.ID
)

A seção passou a exibir indicadores de total, abertas e encerradas, além das últimas ocorrências do plantão, sem corte visual nos cards.

### 7.3 Pendências Operacionais

Galeria:

- galLivroPendenciasFluxoContinuo

Origem:

- PendenciasOperacionais

Filtro validado:

Filter(
    PendenciasOperacionais,
    PlantaoOrigem.Id = varPlantaoAtual.ID
)

A seção passou a exibir indicadores de total, abertas e concluídas, além das últimas pendências do plantão, sem corte visual nos cards.

## 8. Correções técnicas consolidadas

### 8.1 Fórmulas em YAML

Foi consolidada a regra:

- No YAML colado no Power Apps, usar vírgula como separador de argumentos.
- Na barra de fórmula do Power Apps, usar ponto e vírgula.

Exemplo correto no YAML:

=Coalesce(varPlantaoAtual.StatusRondas.Value, "Não conferido")

Exemplo correto na barra de fórmula do Power Apps:

Coalesce(varPlantaoAtual.StatusRondas.Value; "Não conferido")

Essa regra evita o erro de duplicação de separador, como ;;.

### 8.2 Colunas Choice / Opção

Campos de opção devem ser lidos com .Value.

Exemplo correto:

varPlantaoAtual.StatusLivro.Value

Exemplo incorreto:

varPlantaoAtual.StatusLivro

### 8.3 Campos Pessoa

Campos de pessoa devem exibir o nome com .DisplayName.

Exemplo:

varPlantaoAtual.LiderResponsavelAtual.DisplayName

### 8.4 Nomes dos componentes

Foi consolidada a regra:

- apagar o componente antigo antes de colar o novo;
- não manter duplicados;
- remover sufixos automáticos criados pelo Power Apps, como _1, _2, _3;
- manter os nomes oficiais limpos.

### 8.5 Ajuste de alturas

Foram corrigidos cortes, rolagens internas e sobras exageradas em containers.

Ajustes mais relevantes:

- ctnLivroSecaoEquipe passou a crescer conforme a quantidade real de integrantes.
- ctnLivroSecaoOcorrenciasPlantao teve altura ajustada para evitar corte nos cards e na galeria.
- ctnLivroSecaoPendenciasOperacionais teve altura ajustada para comportar textos maiores de pendências.
- ctnLivroSecaoRevisaoFinalizacao foi reconstruído sem container interno desnecessário.

## 9. Padrão visual consolidado

Padrão visual usado nas seções do fluxo contínuo:

- FillPortions: 0
- LayoutDirection: Vertical
- LayoutAlignItems: Stretch
- LayoutGap: 10
- PaddingTop: 12
- PaddingBottom: 12
- PaddingLeft: 16
- PaddingRight: 16
- Título da seção: #0B5F8A
- Texto principal: #374151
- Fundo de campos e galerias: #F9FAFB
- Bordas internas: #D6E4EC

## 10. Resultado visual

Foi validado que:

- as seções aparecem em fluxo contínuo;
- os blocos seguem a ordem operacional do livro;
- os campos principais carregam dados do plantão atual;
- os dropdowns exibem valores padrão coerentes;
- as galerias exibem registros relacionados ao plantão;
- os cards não estão cortados;
- não há rolagem interna indevida nas seções validadas;
- o layout geral está compatível entre as seções.

## 11. Pendências futuras

A V081 não implementou a gravação definitiva no SharePoint.

Pendências para próximas versões:

- criar rotina de salvamento dos campos editáveis do Livro do Plantão;
- definir regras de finalização;
- bloquear edição após finalização;
- registrar usuário e data/hora da finalização;
- validar campos obrigatórios antes da conclusão;
- decidir se o salvamento será por botão único, autosave ou salvamento por seção.

## 12. Resultado da etapa

A etapa V081 foi concluída com sucesso.

O Livro do Plantão em fluxo contínuo está visualmente padronizado e preparado para a próxima etapa:

**V082 - Definir regras de salvamento e finalização do Livro do Plantão.**
