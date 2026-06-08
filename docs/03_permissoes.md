# Regras de Permissões

## 1. Perfis sugeridos

| Perfil | Finalidade |
|---|---|
| Leitura | Consulta informações sem editar |
| Operador | Registra dados operacionais do plantão |
| Líder | Abre, conduz e finaliza livro do plantão |
| Supervisor | Consulta, reabre quando permitido, acompanha relatórios e pendências |
| Administrador | Gerencia cadastros, parâmetros, permissões e auditoria |

## 2. Matriz inicial de permissões

| Ação | Leitura | Operador | Líder | Supervisor | Administrador |
|---|---:|---:|---:|---:|---:|
| Ver Dashboard | Sim | Sim | Sim | Sim | Sim |
| Ver livro do plantão | Sim | Sim | Sim | Sim | Sim |
| Abrir plantão | Não | Não | Sim | Sim | Sim |
| Editar plantão aberto | Não | Sim | Sim | Sim | Sim |
| Registrar equipe | Não | Sim | Sim | Sim | Sim |
| Registrar conferência | Não | Sim | Sim | Sim | Sim |
| Registrar inspeção | Não | Sim | Sim | Sim | Sim |
| Registrar ocorrência | Não | Sim | Sim | Sim | Sim |
| Criar pendência | Não | Sim | Sim | Sim | Sim |
| Concluir pendência | Não | Não | Sim | Sim | Sim |
| Finalizar livro | Não | Não | Sim | Sim | Sim |
| Reabrir livro finalizado | Não | Não | Não | Sim | Sim |
| Ver histórico | Sim | Sim | Sim | Sim | Sim |
| Gerar relatórios | Não | Não | Sim | Sim | Sim |
| Administrar usuários | Não | Não | Não | Não | Sim |
| Administrar cadastros | Não | Não | Não | Sim | Sim |
| Ver auditoria | Não | Não | Não | Sim | Sim |

## 3. Regras operacionais

- Livro finalizado não deve ser editado por Operador.
- Reabertura de livro exige Supervisor ou Administrador.
- Toda finalização deve registrar usuário, data e hora.
- Toda reabertura deve registrar justificativa.
- Pendência concluída deve registrar conclusão, usuário e data.
- Ciência em POT deve registrar usuário, POT, versão, data e hora.
- Ações administrativas relevantes devem gerar auditoria.
