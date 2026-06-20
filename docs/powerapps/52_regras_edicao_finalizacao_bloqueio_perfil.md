# V089 - Regras de edição, finalização e bloqueio por perfil no Livro do Plantão

**Data:** 2026-06-20 15:48:03  
**Status:** concluído  
**Tela:** scrDashboard  
**Área:** Livro do Plantão  
**Componentes principais:** scrDashboard.OnVisible, btnLivroSalvarRascunho, btnLivroFinalizar, btnConfirmarFinalizacaoLivro, btnLivroReabrir, campos editáveis do Livro do Plantão

## 1. Objetivo

Registrar a revisão geral das regras de edição, salvamento, finalização, reabertura e bloqueio por perfil no Livro do Plantão.

A V089 consolida as permissões aplicadas após as etapas de finalização, reabertura, histórico e controle por perfil.

## 2. Regra operacional definida

A regra consolidada ficou assim:

| Perfil | Livro em preenchimento | Livro finalizado |
|---|---|---|
| Administrador | Pode editar, salvar e finalizar | Pode reabrir |
| Supervisor | Pode editar, salvar e finalizar | Pode reabrir |
| Líder responsável | Pode editar, salvar e finalizar o próprio livro | Pode reabrir o próprio livro |
| Operador | Somente visualiza | Somente visualiza |
| Leitura | Somente visualiza | Somente visualiza |

## 3. Variáveis de permissão

Foram revisadas as variáveis de permissão no OnVisible da tela scrDashboard:

- varUsuarioAtual
- varPerfilAcessoAtual
- varPerfilAcessoNormalizado
- varLivroPlantaoFinalizado
- varUsuarioAtualEhAdministradorOuSupervisor
- varEmailLiderResponsavelAtualPlantao
- varUsuarioAtualEhLiderResponsavelPlantao
- varUsuarioAtualEhLiderAutorizadoPlantao
- varPodeEditarLivroPlantao
- varPodeSalvarLivroPlantao
- varPodeFinalizarLivroPlantao
- varPodeReabrirLivroPlantao

## 4. Regra do Administrador e Supervisor

Administrador e Supervisor podem:

- editar Livro em preenchimento;
- salvar Livro em preenchimento;
- finalizar Livro em preenchimento;
- reabrir Livro finalizado.

## 5. Regra do Líder responsável

O perfil Líder pode editar, salvar, finalizar e reabrir somente quando:

- PerfilAcesso normalizado = Lider;
- o e-mail do usuário logado é igual ao e-mail do campo LiderResponsavelAtual do plantão.

## 6. Regra do Operador e Leitura

Operador, Leitura e demais perfis sem autorização:

- não editam campos do Livro do Plantão;
- não salvam;
- não finalizam;
- não reabrem.

Esses perfis continuam podendo visualizar informações e usar filtros/consultas, quando aplicável.

## 7. Botão Salvar

Componente:

- btnLivroSalvarRascunho

Ajustes realizados:

- DisplayMode passou a considerar varPodeSalvarLivroPlantao;
- Fill passou a indicar visualmente bloqueio;
- OnSelect passou a validar permissão antes do Patch;
- StatusLivro = Finalizado bloqueia salvamento;
- varProcessandoLivroPlantao bloqueia clique durante execução.

Mensagem de bloqueio:

- Você não tem permissão para salvar este Livro do Plantão.

## 8. Botão Finalizar

Componente:

- btnLivroFinalizar

Ajustes realizados:

- DisplayMode passou a considerar varPodeFinalizarLivroPlantao;
- Fill passou a indicar visualmente bloqueio;
- OnSelect passou a validar permissão antes de abrir o modal;
- StatusLivro = Finalizado bloqueia nova finalização.

Mensagem de bloqueio:

- Você não tem permissão para finalizar este Livro do Plantão.

## 9. Botão Confirmar finalização

Componente:

- btnConfirmarFinalizacaoLivro

Ajustes realizados:

- valida permissão novamente antes do Patch;
- valida se o livro já está finalizado;
- mantém tratamento com IfError;
- após finalização, força atualização das variáveis de bloqueio:
  - varLivroPlantaoFinalizado = true;
  - varPodeEditarLivroPlantao = false;
  - varPodeSalvarLivroPlantao = false;
  - varPodeFinalizarLivroPlantao = false;
  - varPodeReabrirLivroPlantao recalculado para usuário autorizado.

Esse ajuste corrigiu o comportamento em que campos e botões continuavam visualmente ativos após a finalização até novo recálculo da tela.

## 10. Botão Reabrir

Componente:

- btnLivroReabrir

Regra mantida:

- ativo somente quando StatusLivro = Finalizado;
- usuário precisa ter varPodeReabrirLivroPlantao = true;
- bloqueia durante varProcessandoLivroPlantao.

## 11. Campos editáveis do Livro do Plantão

Os campos editáveis principais passaram a usar regra combinada:

- StatusLivro diferente de Finalizado;
- varPodeEditarLivroPlantao = true;
- varProcessandoLivroPlantao = false.

Isso impede edição indevida após finalização e impede edição por perfis sem autorização.

## 12. Controles de consulta e filtro

Foi definido que controles de consulta não devem seguir a regra de bloqueio do Livro do Plantão.

Exemplo:

- ddOcorrenciasFiltro

Regra definida:

- campos que alteram dados do Livro devem bloquear por perfil/status;
- filtros, busca, navegação e visualização devem permanecer liberados;
- opcionalmente, podem bloquear apenas durante varProcessandoLivroPlantao.

## 13. Validações realizadas

### 13.1 Administrador

Resultado validado:

- Livro em preenchimento: campos, Salvar e Finalizar ativos;
- Livro finalizado: Salvar e Finalizar bloqueados;
- Reabrir ativo;
- reabertura gravou histórico corretamente.

Status: aprovado.

### 13.2 Líder responsável

Resultado validado:

- Livro em preenchimento: campos, Salvar e Finalizar ativos;
- Livro finalizado: Reabrir ativo;
- após ajuste, finalização bloqueia campos e botões corretamente;
- reabertura funciona para o líder responsável.

Status: aprovado.

### 13.3 Operador

Resultado validado:

- campos bloqueados;
- Salvar bloqueado;
- Finalizar bloqueado;
- Reabrir bloqueado.

Status: aprovado.

## 14. Observação sobre Microsoft Lists

Durante a validação, a lista HistoricoReaberturasPlantao apresentou comportamento visual de cache/filtro.

Sintoma:

- registros recentes não apareciam imediatamente na exibição principal;
- porém apareciam no painel de filtro da Microsoft Lists.

Conclusão:

- o Power Apps gravou corretamente;
- o Patch funcionou;
- os itens existiam na lista;
- o problema era visual/cache/filtro da Microsoft Lists.

Ação que resolveu:

- marcar/desmarcar o filtro ReabertoPor;
- a exibição foi atualizada e os registros apareceram.

## 15. Resultado da etapa

A V089 foi concluída com sucesso.

O Livro do Plantão agora possui regra consolidada de:

- edição por perfil;
- salvamento por perfil;
- finalização por perfil;
- reabertura por perfil;
- bloqueio após finalização;
- bloqueio durante processamento;
- liberação de filtros e consultas.

## 16. Próxima etapa sugerida

V090 - Publicar versão de teste e validar fluxo completo no app publicado.
