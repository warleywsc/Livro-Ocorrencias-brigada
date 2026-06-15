# V066 - Decisão de fluxo contínuo do Livro do Plantão

**Projeto:** Livro de Ocorrências Digital da Brigada de Incêndio  
**Responsável:** Warley da Silva Conceição  
**Data do registro:** 15/06/2026 14:58:12  
**Ambiente:** Power Apps - Eletronuclear  
**Área principal afetada:** Livro do Plantão  

## 1. Contexto

Durante conversa com analista de sistemas, foi identificado um risco de aceitação operacional no modelo inicial do app.

O Líder de Equipe está acostumado a preencher o livro de forma contínua, seguindo uma sequência natural de registro, sem depender de muitos cliques, botões, modais ou navegação entre telas.

O modelo atual do livro segue uma ordem prática de preenchimento:

1. Recebimento do serviço.
2. Equipe.
3. Conferência de materiais e condições das viaturas.
4. Inspeção de rotina.
5. POTS revisados.
6. Ocorrências organizadas por áreas e postos.

## 2. Problema identificado

A estrutura inicial do app separava muitas ações em áreas independentes, como Ocorrências, Nova Ocorrência, Pendências, Nova Pendência, POTS, Histórico e Relatórios.

Essa separação continua útil para consulta, filtro, auditoria, acompanhamento e relatórios, mas pode gerar resistência no preenchimento diário do livro, pois altera muito o hábito operacional do líder.

## 3. Decisão

O projeto passa a priorizar o seguinte modelo:

**Livro do Plantão como tela principal de preenchimento contínuo.**

A experiência principal do líder deve ser preencher o livro de cima para baixo, em uma tela única e rolável, com seções abertas e em ordem operacional.

## 4. Nova experiência desejada

A tela Livro do Plantão deverá conter, em fluxo contínuo:

1. Cabeçalho do Plantão.
2. Recebimento do Serviço.
3. Equipe do Plantão.
4. Conferência de Viaturas e Materiais.
5. Inspeção de Rotina.
6. POTS Revisados.
7. Ocorrências do Plantão.
8. Pendências Operacionais.
9. Revisão e Finalização.

## 5. Navegação por teclado

A nova tela deverá favorecer preenchimento rápido com teclado:

- TAB avança para o próximo campo.
- SHIFT + TAB retorna ao campo anterior.
- A ordem de tabulação deve seguir a ordem operacional do livro.
- O uso do mouse deve ser opcional sempre que possível.
- Botões principais devem ficar no fim das seções ou no fim do fluxo.

## 6. Reaproveitamento do que já foi criado

A mudança não invalida o que já foi construído.

Devem ser reaproveitados:

- Header atual.
- Menu lateral atual.
- Estrutura da tela scrDashboard.
- Container ctnLivroPlantao.
- Área Ocorrências como consulta, filtro, detalhe e auditoria.
- Área Pendências como consulta, acompanhamento e conclusão.
- Modais de detalhe de Ocorrências e Pendências.
- Funcionalidades já validadas de salvar ocorrência, encerrar ocorrência, gerar pendência, criar pendência manual e concluir pendência.
- Listas SharePoint já criadas.

## 7. Novo papel das áreas do app

### Livro do Plantão

Passa a ser o local principal de preenchimento diário.

### Ocorrências

Passa a ser área de consulta, filtro, detalhe, auditoria e acompanhamento das ocorrências registradas.

### Pendências

Passa a ser área de consulta, acompanhamento, conclusão e controle das pendências operacionais.

### POTS, Histórico, Relatórios e Administração

Permanecem como áreas auxiliares do sistema.

## 8. Diretriz de implementação

A implementação deverá ser feita em etapas, sem apagar o que já foi validado.

Diretrizes:

- Criar layout contínuo dentro da área Livro do Plantão.
- Manter as áreas Ocorrências e Pendências funcionando.
- Evitar que o preenchimento principal dependa de modais.
- Usar modais apenas para detalhe, consulta, edição pontual ou ação complementar.
- Priorizar aceitação operacional antes de refinamento visual.
- Preservar o versionamento Git e os registros de validação.

## 9. Etapas previstas

### V067

Preparar layout base do Livro do Plantão em fluxo contínuo.

### V068

Criar seção Recebimento do Serviço.

### V069

Criar seção Equipe do Plantão.

### V070

Criar seção Conferência de Viaturas e Materiais.

### V071

Criar seção Inspeção de Rotina.

### V072

Criar seção POTS Revisados.

### V073

Criar seção Ocorrências por BASE, ANGRA 1, ANGRA 2 e ANGRA 3.

### V074

Criar seção Pendências Operacionais.

### V075

Criar salvamento de rascunho do Livro do Plantão.

### V076

Criar revisão e finalização do Livro do Plantão.

## 10. Status

Decisão registrada para orientar a próxima fase de implementação.