# V082 - Regras de salvamento e finalização do Livro do Plantão

**Data:** 2026-06-17 10:01:02  
**Etapa:** V082 - Definir regras de salvamento e finalização do Livro do Plantão.

## 1. Objetivo

Registrar a implementação e validação inicial das regras de salvamento e finalização do **Livro do Plantão** no Power Apps.

A etapa V082 adicionou ações funcionais à seção **9. Revisão e Finalização**, permitindo salvar os campos editáveis do livro na lista **Plantoes** e finalizar o registro do plantão com validações operacionais mínimas.

## 2. Contexto

Na etapa anterior, V081, o Livro do Plantão foi padronizado visualmente em fluxo contínuo.

Na V082, o aviso provisório da seção final foi substituído por botões funcionais:

- Salvar Livro do Plantão
- Finalizar Livro do Plantão

A implementação foi feita no componente:

- ctnLivroSecaoRevisaoFinalizacao

Com substituição do bloco antigo:

- ctnLivroRevisaoAviso

Pelo novo bloco:

- ctnLivroRevisaoAcoes

## 3. Componentes criados

Foram criados os seguintes componentes de ação:

- ctnLivroRevisaoAcoes
- btnLivroSalvarRascunho
- btnLivroFinalizar

## 4. Regra de salvamento

O botão **Salvar Livro do Plantão** executa Patch na lista **Plantoes**, atualizando o registro atual identificado por:

LookUp(
    Plantoes,
    ID = varPlantaoAtual.ID
)

Após o Patch, a variável **varPlantaoAtual** é atualizada com o retorno do SharePoint.

## 5. Campos salvos no botão Salvar

O botão **Salvar Livro do Plantão** atualiza os seguintes campos da lista **Plantoes**:

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

## 6. Regra de finalização

O botão **Finalizar Livro do Plantão** executa validações antes de gravar a finalização.

A finalização somente é permitida quando:

- RevisaoLivro = Conferido
- PendenciasCriticas diferente de Existem
- LiberacaoFinal = Liberado

Se as condições não forem atendidas, o app exibe mensagem de erro e não finaliza o livro.

Mensagem validada:

Para finalizar, a Revisão do Livro deve estar como Conferido, Pendências Críticas não podem existir e a Liberação Final deve estar como Liberado.

## 7. Campos atualizados na finalização

Quando a finalização é válida, o app grava os mesmos campos do salvamento e também atualiza:

- StatusLivro = Finalizado
- DataFinalizacao = Now()
- FinalizadoPor = usuário logado

O campo **FinalizadoPor** foi gravado como pessoa do SharePoint usando:

- Claims
- DisplayName
- Email
- Department
- JobTitle
- Picture

## 8. Bloqueio após finalização

Após a finalização, os controles configurados com base em **StatusLivro** passam para modo de visualização.

Regra usada nos campos editáveis:

If(
    Coalesce(varPlantaoAtual.StatusLivro.Value, "") = "Finalizado",
    DisplayMode.View,
    DisplayMode.Edit
)

Os botões também mudam para modo de visualização e cor cinza quando o livro está finalizado.

## 9. Ajuste de campos de texto com várias linhas

Durante os testes, foi identificado que campos de texto com várias linhas retornavam HTML do SharePoint, exibindo conteúdo como:

<div class="ExternalClass...">Teste de salvamento V082.</div>

Foi aplicada a correção com **PlainText()** nos Defaults dos campos de observação e texto longo.

Campos corrigidos:

- txtLivroRecebimentoPassagem
- txtLivroRecebimentoResumo
- txtLivroViaturasObservacoes
- txtLivroInspecaoObservacoes
- txtLivroPotsObservacoes
- txtLivroRevisaoObservacoes

Exemplo de padrão adotado:

PlainText(Coalesce(varPlantaoAtual.ObservacoesRevisaoFinalizacao, ""))

No Power Apps em interface PT-BR, quando ajustado diretamente na barra de fórmula, o separador equivalente é ponto e vírgula.

## 10. Testes realizados

### 10.1 Teste de salvamento

Foi digitado texto de teste no campo:

- Observações da Revisão e Finalização

Resultado:

- o app exibiu a mensagem "Livro do Plantão salvo com sucesso";
- o campo foi atualizado na lista **Plantoes** no SharePoint.

Status: aprovado.

### 10.2 Teste de bloqueio de finalização inválida

Foram mantidos valores inválidos para finalização:

- RevisaoLivro = Pendente
- PendenciasCriticas = Não verificado
- LiberacaoFinal = Não liberado

Resultado:

- o app exibiu mensagem de erro;
- o plantão não foi finalizado.

Status: aprovado.

### 10.3 Teste de finalização válida

Foram usados os valores:

- RevisaoLivro = Conferido
- PendenciasCriticas = Não há
- LiberacaoFinal = Liberado

Resultado:

- o app exibiu a mensagem "Livro do Plantão finalizado com sucesso";
- StatusLivro foi atualizado para Finalizado;
- DataFinalizacao foi preenchida;
- FinalizadoPor foi preenchido com o usuário logado;
- os botões ficaram bloqueados após a finalização.

Status: aprovado.

## 11. Validação no SharePoint

Foi confirmado na lista **Plantoes** que o registro do plantão fictício foi atualizado com:

- StatusLivro = Finalizado
- DataFinalizacao preenchida
- FinalizadoPor preenchido
- campo de observação salvo corretamente
- valores de revisão e liberação gravados

## 12. Resultado da etapa

A etapa V082 foi concluída com sucesso.

O Livro do Plantão agora possui:

- salvamento funcional dos campos principais;
- validação mínima antes de finalizar;
- finalização funcional;
- bloqueio de edição após finalização;
- registro de data/hora de finalização;
- registro do usuário responsável pela finalização;
- correção da exibição de textos longos com PlainText.

## 13. Pendências futuras

A V082 validou a regra principal de salvamento e finalização, mas ainda podem ser tratadas em versões futuras:

- criar confirmação modal antes de finalizar;
- criar botão para reabrir livro com justificativa;
- registrar histórico de alterações;
- tratar erros de Patch com IfError;
- revisar permissões por perfil;
- criar regra para impedir finalização sem equipe mínima;
- criar regra para impedir finalização com ocorrências ou pendências críticas abertas, se essa for a decisão operacional.

## 14. Próxima etapa sugerida

V083 - Criar confirmação de finalização e tratamento de erro no salvamento do Livro do Plantão.
