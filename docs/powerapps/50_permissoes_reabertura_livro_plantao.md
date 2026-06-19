# V087 - Regras de permissão para reabertura do Livro do Plantão

**Data:** 2026-06-19 19:43:05  
**Status:** concluído  
**Tela:** scrDashboard  
**Área:** Livro do Plantão  
**Componentes principais:** scrDashboard.OnVisible, btnLivroReabrir, btnConfirmarReaberturaLivro

## 1. Objetivo

Registrar a implementação e validação das regras de permissão para reabertura do Livro do Plantão.

A V087 complementa a V086, impedindo que usuários sem perfil autorizado consigam reabrir um Livro do Plantão finalizado.

## 2. Regra operacional definida para o MVP

Nesta etapa, foi adotada regra simplificada de permissão:

| PerfilAcesso | Pode reabrir? |
|---|---:|
| Administrador | Sim |
| Supervisor | Sim |
| Lider | Não nesta etapa |
| Operador | Não |
| Leitura | Não |

## 3. Decisão sobre perfil Lider

A regra completa desejada é:

- Administrador pode reabrir qualquer Livro do Plantão;
- Supervisor pode reabrir qualquer Livro do Plantão;
- Líder pode reabrir somente o Livro do Plantão em que ele for o líder responsável;
- Operador e Leitura não podem reabrir.

Porém, nesta etapa, a regra do Líder responsável foi adiada para validação futura porque o nome interno do campo de líder no item Plantoes ainda precisa ser confirmado com segurança.

Assim, para o MVP da V087, a reabertura ficou restrita a:

- Administrador
- Supervisor

## 4. Lista usada para permissão

A regra usa a lista SharePoint:

- Usuarios

Campos considerados:

- Email
- PerfilAcesso
- Ativo

## 5. Variáveis criadas/atualizadas

Na propriedade OnVisible da tela scrDashboard, foram atualizadas as variáveis:

- varUsuarioAtual
- varPerfilAcessoAtual
- varPodeReabrirLivroPlantao
- varPodeFinalizarLivroPlantao
- varPodeEditarLivroPlantao

## 6. Regra aplicada em varPodeReabrirLivroPlantao

Regra validada:

- varPerfilAcessoAtual = Administrador
- ou varPerfilAcessoAtual = Supervisor

Demais perfis não podem reabrir.

## 7. Botão Reabrir

Componente alterado:

- btnLivroReabrir

Propriedades ajustadas:

- DisplayMode
- Fill
- OnSelect

Comportamento validado:

- quando o livro está Finalizado e o usuário tem permissão, o botão fica ativo;
- quando o usuário não tem permissão, o botão fica cinza/bloqueado;
- se a ação for chamada sem permissão, exibe mensagem de erro.

Mensagem usada:

Você não tem permissão para reabrir este Livro do Plantão.

## 8. Botão Confirmar reabertura

Componente alterado:

- btnConfirmarReaberturaLivro

A fórmula da V086 foi mantida, mas recebeu validação inicial de permissão.

Comportamento:

- se varPodeReabrirLivroPlantao for falso, a reabertura é bloqueada antes de qualquer Patch;
- se permitido, segue o fluxo da V086:
  - valida justificativa;
  - cria histórico;
  - atualiza Plantoes;
  - incrementa contador;
  - fecha modal;
  - exibe sucesso.

## 9. Validações realizadas

### 9.1 Usuário Administrador

Usuário validado na lista Usuarios:

- Email institucional do usuário atual;
- Ativo = Sim;
- PerfilAcesso = Administrador.

Resultado:

- botão Reabrir ficou liberado quando o Livro estava Finalizado;
- reabertura funcionou;
- histórico continuou sendo gravado;
- contador continuou funcionando.

Status: aprovado.

### 9.2 Bloqueio por perfil sem permissão

Resultado esperado e validado:

- usuário sem perfil Administrador/Supervisor não deve conseguir reabrir;
- botão Reabrir fica bloqueado;
- a confirmação da reabertura também possui trava de permissão.

Status: aprovado.

## 10. Resultado da etapa

A V087 foi concluída com sucesso.

O Livro do Plantão agora possui controle básico de permissão para reabertura, com dupla proteção:

1. bloqueio visual no botão Reabrir;
2. bloqueio lógico no botão Confirmar reabertura.

## 11. Pendência futura

Refinar a regra do perfil Lider para permitir reabertura somente quando o usuário for o líder responsável pelo plantão.

Para isso, será necessário confirmar o nome interno correto do campo de líder responsável na lista Plantoes e no Power Apps.

## 12. Próxima etapa sugerida

V088 - Refinar permissão do Líder responsável no Livro do Plantão.
