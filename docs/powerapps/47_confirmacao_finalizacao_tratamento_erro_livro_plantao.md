# V083 - Confirmação de finalização e tratamento de erro no Livro do Plantão

**Data:** 2026-06-17 10:19:26  
**Etapa:** V083 - Criar confirmação de finalização e tratamento de erro no salvamento do Livro do Plantão.

## 1. Objetivo

Registrar a implementação da confirmação de finalização e do tratamento básico de erro nas ações de salvamento e finalização do **Livro do Plantão** no Power Apps.

A etapa V083 melhorou a segurança operacional da finalização do livro, evitando finalização direta sem confirmação e reduzindo o risco de clique duplo durante o processamento.

## 2. Contexto

Na etapa V082, foram implementados os botões funcionais:

- Salvar Livro do Plantão
- Finalizar Livro do Plantão

Na V083, esses botões foram revisados para incluir:

- tratamento com IfError;
- variável de processamento;
- modal de confirmação antes da finalização;
- mensagens de erro e sucesso mais claras;
- bloqueio visual durante processamento.

## 3. Componentes alterados

Componentes alterados na seção 9:

- btnLivroSalvarRascunho
- btnLivroFinalizar

Componente criado no nível da tela:

- ctnModalFinalizacaoLivroOverlay

Componentes internos do modal:

- ctnModalFinalizacaoLivroCard
- lblModalFinalizacaoLivroTitulo
- lblModalFinalizacaoLivroTexto
- lblModalFinalizacaoLivroResumo
- ctnModalFinalizacaoLivroBotoes
- btnCancelarFinalizacaoLivro
- btnConfirmarFinalizacaoLivro

## 4. Variáveis usadas

Foram usadas as seguintes variáveis globais:

- varProcessandoLivroPlantao
- varConfirmarFinalizacaoLivroPlantao

### 4.1 varProcessandoLivroPlantao

Usada para indicar que uma ação de salvamento ou finalização está em andamento.

Finalidades:

- evitar clique duplo;
- bloquear ações durante processamento;
- alterar texto do botão de confirmação para "Finalizando...";
- evitar reenvio do Patch enquanto a operação anterior ainda está em execução.

### 4.2 varConfirmarFinalizacaoLivroPlantao

Usada para controlar a visibilidade do modal de confirmação de finalização.

Quando verdadeira, exibe o modal:

- ctnModalFinalizacaoLivroOverlay

Quando falsa, oculta o modal.

## 5. Alteração no botão Salvar Livro do Plantão

O botão **Salvar Livro do Plantão** recebeu tratamento com IfError.

Comportamento esperado:

- se o livro já estiver finalizado, exibe aviso de bloqueio;
- se estiver em preenchimento, inicia processamento;
- executa Patch na lista Plantoes;
- em caso de erro, exibe mensagem com FirstError.Message;
- em caso de sucesso, atualiza varPlantaoAtual e exibe mensagem de sucesso;
- ao final, libera varProcessandoLivroPlantao.

Mensagem de sucesso validada:

- Livro do Plantão salvo com sucesso.

Mensagem de erro prevista:

- Erro ao salvar o Livro do Plantão: erro informado pelo Power Apps.

## 6. Alteração no botão Finalizar Livro do Plantão

O botão **Finalizar Livro do Plantão** deixou de finalizar diretamente.

Novo comportamento:

- se o livro já estiver finalizado, exibe aviso;
- se os critérios de finalização não forem atendidos, exibe erro;
- se os critérios forem atendidos, abre o modal de confirmação;
- a finalização real passa a ocorrer somente no botão Confirmar finalização.

Critérios mínimos mantidos:

- RevisaoLivro = Conferido
- PendenciasCriticas diferente de Existem
- LiberacaoFinal = Liberado

Mensagem de validação mantida:

Para finalizar, a Revisão do Livro deve estar como Conferido, Pendências Críticas não podem existir e a Liberação Final deve estar como Liberado.

## 7. Modal de confirmação

Foi criado modal centralizado com overlay escuro.

Componente principal:

- ctnModalFinalizacaoLivroOverlay

O modal exibe:

- título da confirmação;
- orientação sobre bloqueio após finalização;
- resumo dos critérios selecionados;
- botão Cancelar;
- botão Confirmar finalização.

Resumo exibido no modal:

- Revisão
- Pendências críticas
- Liberação final

## 8. Botão Cancelar

O botão **Cancelar** apenas fecha o modal.

Comportamento validado:

- fecha o modal;
- não grava nada no SharePoint;
- mantém o Livro do Plantão em preenchimento;
- não altera StatusLivro, DataFinalizacao ou FinalizadoPor.

## 9. Botão Confirmar finalização

O botão **Confirmar finalização** executa a finalização real.

Comportamento implementado:

- verifica se já existe processamento em andamento;
- define varProcessandoLivroPlantao como verdadeiro;
- executa Patch na lista Plantoes;
- salva os campos principais do livro;
- grava StatusLivro como Finalizado;
- grava DataFinalizacao com Now();
- grava FinalizadoPor com o usuário logado;
- atualiza varPlantaoAtual;
- fecha o modal em caso de sucesso;
- exibe mensagem de sucesso;
- libera varProcessandoLivroPlantao ao final.

Mensagem de sucesso validada:

- Livro do Plantão finalizado com sucesso.

## 10. Tratamento de erro na finalização

A finalização passou a usar IfError.

Em caso de erro no Patch:

- exibe mensagem de erro;
- mantém o modal aberto;
- libera varProcessandoLivroPlantao;
- não exibe mensagem de sucesso indevida.

Mensagem prevista:

- Erro ao finalizar o Livro do Plantão: erro informado pelo Power Apps.

## 11. Ajuste de separadores em fórmulas

Durante a aplicação da V083, foi necessário converter as fórmulas coladas diretamente na barra do Power Apps para o padrão da interface em português.

Regra consolidada:

- em YAML: usar vírgula como separador;
- na barra de fórmula do Power Apps: usar ponto e vírgula;
- para ações sequenciais na barra de fórmula: usar dois pontos e vírgula.

Exemplo de chamada na barra de fórmula:

If(
    condição;
    ação_se_verdadeiro;
    ação_se_falso
)

Exemplo de sequência de ações:

Set(varProcessandoLivroPlantao; true);;
Notify("Mensagem"; NotificationType.Success)

## 12. Testes realizados

### 12.1 Teste do botão Salvar

Resultado validado:

- o botão salvou o Livro do Plantão;
- a mensagem de sucesso foi exibida;
- o SharePoint recebeu a alteração.

Status: aprovado.

### 12.2 Teste de bloqueio de finalização inválida

Resultado validado:

- com critérios inválidos, o app exibiu mensagem de erro;
- o livro não foi finalizado.

Status: aprovado.

### 12.3 Teste de abertura do modal

Resultado validado:

- com critérios válidos, o botão Finalizar Livro do Plantão abriu o modal;
- o livro não foi finalizado diretamente.

Status: aprovado.

### 12.4 Teste do botão Cancelar

Resultado validado:

- o modal fechou;
- nenhum dado foi gravado;
- o livro permaneceu em preenchimento.

Status: aprovado.

### 12.5 Teste do botão Confirmar finalização

Resultado validado:

- o livro foi finalizado com sucesso;
- StatusLivro mudou para Finalizado;
- DataFinalizacao foi preenchida;
- FinalizadoPor foi preenchido;
- os botões ficaram bloqueados após a finalização.

Status: aprovado.

## 13. Resultado da etapa

A V083 foi concluída com sucesso.

O Livro do Plantão agora possui:

- salvamento com tratamento básico de erro;
- finalização protegida por modal de confirmação;
- bloqueio de clique duplo durante processamento;
- feedback visual durante finalização;
- confirmação antes da gravação definitiva;
- cancelamento seguro sem gravação;
- finalização validada no SharePoint.

## 14. Pendências futuras

Sugestões para etapas futuras:

- criar rotina de reabertura com justificativa;
- criar histórico de alterações do Livro do Plantão;
- criar validações operacionais adicionais antes de finalizar;
- validar permissões por perfil de usuário;
- criar painel de auditoria;
- revisar UX dos botões após finalização;
- avaliar regra de impedimento caso existam pendências críticas abertas.

## 15. Próxima etapa sugerida

V084 - Criar rotina de reabertura do Livro do Plantão com justificativa.
