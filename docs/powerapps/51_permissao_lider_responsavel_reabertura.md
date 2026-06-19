# V088 - Permissão do Líder responsável na reabertura do Livro do Plantão

**Data:** 2026-06-19 19:56:21  
**Status:** concluído  
**Tela:** scrDashboard  
**Área:** Livro do Plantão  
**Componentes principais:** scrDashboard.OnVisible, btnLivroReabrir, btnConfirmarReaberturaLivro

## 1. Objetivo

Registrar o refinamento da regra de permissão para reabertura do Livro do Plantão, permitindo que o perfil Líder possa reabrir somente o Livro do Plantão em que ele seja o Líder Responsável Atual.

A V088 complementa a V087, que havia restringido a reabertura apenas aos perfis Administrador e Supervisor no MVP inicial.

## 2. Regra operacional final validada

A regra de reabertura passa a ser:

- Administrador pode reabrir qualquer Livro do Plantão;
- Supervisor pode reabrir qualquer Livro do Plantão;
- Líder pode reabrir somente se for o Líder Responsável Atual do plantão;
- Operador não pode reabrir;
- Leitura não pode reabrir;
- demais perfis sem autorização não podem reabrir.

## 3. Lista usada para perfil de acesso

A permissão continua baseada na lista SharePoint:

- Usuarios

Campos usados:

- Email
- PerfilAcesso
- Ativo

## 4. Campo usado para validar o Líder responsável

A validação do Líder responsável usa o campo do item atual de Plantoes:

- LiderResponsavelAtual

Regra aplicada:

- o e-mail de LiderResponsavelAtual deve ser igual ao e-mail do usuário logado.

## 5. Normalização do perfil

Foi criada a variável:

- varPerfilAcessoNormalizado

Finalidade:

- tratar variações de escrita do perfil Líder;
- aceitar "Líder", "lider", "LIDER" e normalizar para "Lider".

## 6. Variáveis atualizadas no OnVisible da tela scrDashboard

Foram usadas/atualizadas as variáveis:

- varUsuarioAtual
- varPerfilAcessoAtual
- varPerfilAcessoNormalizado
- varEmailLiderResponsavelAtualPlantao
- varUsuarioAtualEhLiderResponsavelPlantao
- varPodeReabrirLivroPlantao
- varPodeFinalizarLivroPlantao
- varPodeEditarLivroPlantao

## 7. Regra aplicada em varPodeReabrirLivroPlantao

A variável varPodeReabrirLivroPlantao passa a retornar verdadeiro quando:

- varPerfilAcessoNormalizado = Administrador;
- ou varPerfilAcessoNormalizado = Supervisor;
- ou varPerfilAcessoNormalizado = Lider e varUsuarioAtualEhLiderResponsavelPlantao = verdadeiro.

## 8. Botão Reabrir

O botão btnLivroReabrir continua usando a variável:

- varPodeReabrirLivroPlantao

Propriedades controladas:

- DisplayMode
- Fill
- OnSelect

Comportamento validado:

- fica ativo para perfil autorizado quando o Livro está Finalizado;
- fica bloqueado para perfil sem permissão;
- exibe mensagem de erro se a reabertura for chamada sem permissão.

Mensagem usada:

Você não tem permissão para reabrir este Livro do Plantão.

## 9. Botão Confirmar reabertura

O botão btnConfirmarReaberturaLivro manteve a trava lógica criada na V087:

- antes de executar qualquer Patch, verifica varPodeReabrirLivroPlantao.

Isso mantém dupla proteção:

1. bloqueio visual no botão Reabrir;
2. bloqueio lógico antes da gravação.

## 10. Testes realizados

### 10.1 Administrador

Condição:

- PerfilAcesso = Administrador
- Ativo = Sim

Resultado:

- botão Reabrir ativo quando o Livro estava Finalizado;
- reabertura permitida.

Status: aprovado.

### 10.2 Líder responsável

Condição:

- PerfilAcesso = Líder
- Ativo = Sim
- usuário logado igual ao campo LiderResponsavelAtual do plantão.

Resultado:

- botão Reabrir ativo quando o Livro estava Finalizado;
- reabertura permitida para o líder responsável.

Status: aprovado.

### 10.3 Operador

Condição:

- PerfilAcesso = Operador
- Ativo = Sim

Resultado:

- botão Reabrir ficou cinza/bloqueado;
- usuário sem permissão não conseguiu reabrir.

Status: aprovado.

## 11. Resultado da etapa

A V088 foi concluída com sucesso.

A regra de reabertura agora está alinhada com a operação pretendida:

- perfis administrativos podem reabrir qualquer Livro;
- líder pode reabrir somente o próprio Livro do Plantão;
- usuários operacionais sem autorização ficam bloqueados.

## 12. Próxima etapa sugerida

V089 - Revisar regras de edição, finalização e bloqueio por perfil no Livro do Plantão.
