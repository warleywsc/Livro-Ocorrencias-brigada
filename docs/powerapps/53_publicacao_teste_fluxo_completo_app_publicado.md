# V090 - Publicação de teste e validação do fluxo completo no app publicado

**Data:** 2026-06-20 19:07:00  
**Status:** concluído  
**Tela:** scrDashboard  
**Área:** Livro do Plantão  
**Tipo de validação:** app publicado / executado fora do modo edição  
**Escopo:** teste restrito, sem compartilhamento com a organização

## 1. Objetivo

Registrar a validação do fluxo completo do Livro do Plantão no app executado/publicado, fora do modo edição do Power Apps Studio.

A V090 teve como foco confirmar se as regras implementadas até a V089 funcionam no uso real do app, incluindo:

- edição por perfil;
- salvamento;
- finalização;
- bloqueio pós-finalização;
- reabertura;
- histórico de reabertura;
- contador de reaberturas;
- identificação visual do perfil logado;
- validação em app executado.

## 2. Segurança de publicação

Foi confirmado que publicar/executar o app não equivale a compartilhar com toda a organização.

Durante esta etapa:

- o app não foi compartilhado com a organização;
- não foi usado o botão Compartilhar para liberar acesso amplo;
- a validação foi feita de forma restrita pelo próprio usuário;
- a publicação/teste foi tratada como validação técnica interna.

## 3. Comportamento observado na publicação

Ao tentar publicar diretamente pelo Power Apps Studio, a interface não apresentou retorno visual claro.

Foi então usado o caminho alternativo:

- página de Aplicativos;
- seleção do app Livro de Ocorrências Digital da Brigada de Incêndio;
- execução pelo botão Reproduzir/Executar.

Na aba de versões, a versão mais recente aparecia como:

- Publicado = Dinâmico.

Assim, a validação seguiu pelo app executado.

## 4. Observação sobre autenticação

Ao executar o app, foi exibida solicitação de entrada/autenticação.

Comportamento observado:

- abertura de nova aba do app executado;
- abertura de janela de autenticação;
- após autenticação, o app carregou normalmente.

Esse comportamento foi considerado normal no contexto do Power Apps.

## 5. Ajuste realizado após o primeiro teste publicado

Durante o teste como Administrador, após a primeira reabertura no app executado, os botões não atualizaram imediatamente.

Sintoma:

- após reabrir, os botões continuaram visualmente bloqueados;
- a atualização ocorreu somente após pressionar F5;
- em reabertura posterior, o comportamento passou a ocorrer corretamente.

Causa identificada:

- após o Patch de reabertura, as variáveis de permissão e bloqueio precisavam ser atualizadas imediatamente, de forma semelhante ao ajuste já feito na finalização.

## 6. Correção aplicada na reabertura

Foi ajustado o botão:

- btnConfirmarReaberturaLivro

Após a reabertura bem-sucedida, a rotina passou a forçar:

- varLivroPlantaoFinalizado = false;
- varPodeEditarLivroPlantao recalculado;
- varPodeSalvarLivroPlantao recalculado;
- varPodeFinalizarLivroPlantao recalculado;
- varPodeReabrirLivroPlantao = false;
- fechamento do modal;
- reset da justificativa;
- liberação do processamento.

Resultado:

- após reabrir, os botões Salvar e Finalizar voltam a ficar ativos sem necessidade de F5;
- botão Reabrir fica bloqueado;
- StatusLivro retorna para Em preenchimento;
- histórico continua sendo gravado.

## 7. Indicador visual de perfil

Foi criado indicador visual no cabeçalho global do app para facilitar a validação por perfil.

Componente criado:

- lblPerfilUsuarioAtual

Local:

- HeaderContainer;
- lado direito do cabeçalho azul superior.

Texto final validado:

- Perfil de acesso: Administrador | Usuário: Warley da Silva Conceição
- Perfil de acesso: Supervisor | Usuário: Warley da Silva Conceição
- Perfil de acesso: Lider | Usuário: Warley da Silva Conceição
- Perfil de acesso: Operador | Usuário: Warley da Silva Conceição

A versão anterior mostrava "Líder responsável" mesmo quando o PerfilAcesso atual era Operador ou Supervisor, o que gerava ambiguidade.

A fórmula foi simplificada para mostrar:

- perfil de acesso ativo;
- nome do usuário logado.

## 8. Ajuste visual no cabeçalho

O HeaderContainer foi ajustado para incluir um container de perfil:

- ctnHeaderPerfil

E o texto principal do cabeçalho foi reorganizado para manter:

- título do app;
- menu atual;
- código do plantão;
- status do livro;
- perfil de acesso;
- usuário logado.

## 9. Validação como Administrador

Perfil testado:

- Administrador

Resultado validado:

- app executado abriu corretamente;
- campos ficam editáveis quando o Livro está Em preenchimento;
- Salvar funciona;
- Finalizar funciona;
- após finalização, Salvar e Finalizar ficam bloqueados;
- Reabrir fica ativo;
- Reabrir funciona;
- histórico grava nova reabertura;
- contador incrementa;
- após correção, botões atualizam sem necessidade de F5.

Status: aprovado.

## 10. Validação como Líder responsável

Perfil testado:

- Lider

Condição:

- usuário logado é o Líder Responsável Atual do plantão.

Resultado validado:

- app executado abriu corretamente;
- perfil aparece no cabeçalho;
- usuário consegue finalizar;
- usuário consegue reabrir;
- regras de bloqueio e liberação funcionam conforme esperado.

Status: aprovado.

## 11. Validação como Operador

Perfil testado:

- Operador

Resultado validado:

- perfil aparece no cabeçalho;
- campos ficam bloqueados;
- Salvar fica bloqueado;
- Finalizar fica bloqueado;
- Reabrir fica bloqueado;
- usuário consegue apenas visualizar.

Status: aprovado.

## 12. Observação sobre múltiplas janelas

Foi observado que, ao clicar em Reproduzir/Executar, o Power Apps pode abrir:

- uma nova aba do app;
- uma janela de autenticação;
- depois retornar ao app executado.

Esse comportamento foi aceito como normal no ambiente.

## 13. Observação sobre Microsoft Lists

Durante testes anteriores, a lista HistoricoReaberturasPlantao apresentou atraso visual/cache na exibição dos itens.

Foi confirmado que:

- os itens estavam gravados;
- apareciam no filtro;
- marcar/desmarcar o filtro ReabertoPor atualizou a exibição;
- não havia falha no Patch do Power Apps.

## 14. Resultado da etapa

A V090 foi concluída com sucesso.

O app foi validado em execução fora do modo edição, com os seguintes pontos aprovados:

- app executado carrega;
- perfil logado fica visível;
- Administrador validado;
- Líder responsável validado;
- Operador validado;
- finalização validada;
- reabertura validada;
- histórico validado;
- contador validado;
- bloqueio pós-finalização validado;
- liberação após reabertura validada;
- teste mantido restrito, sem compartilhamento com a organização.

## 15. Próxima etapa sugerida

V091 - Preparar compartilhamento restrito e roteiro de validação piloto.
