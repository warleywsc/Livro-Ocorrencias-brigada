# Mapa de Navegacao do Power Apps

Projeto: Livro de Ocorrencias Digital da Brigada de Incendio
Data: 09/06/2026
Status: Planejamento inicial

## 1. Objetivo

Definir a navegacao inicial do aplicativo no Power Apps com base nas telas aprovadas no MVP visual e nas listas SharePoint ja criadas.

## 2. Estrutura principal de navegacao

Menu principal:

- Dashboard
- Livro do Plantao
- Ocorrencias
- Pendencias
- POTs e Ciencia
- Historico
- Relatorios
- Administracao

## 3. Rotas/telas iniciais

### 3.1 Dashboard Operacional

Finalidade:

- Exibir resumo do plantao atual.
- Exibir status do livro.
- Exibir lider escalado.
- Exibir lider responsavel atual.
- Exibir pendencias abertas.
- Exibir ocorrencias recentes.

Listas usadas:

- Plantoes
- EquipePlantao
- PendenciasOperacionais
- Ocorrencias

### 3.2 Livro do Plantao

Finalidade:

- Abrir plantao.
- Editar dados do plantao.
- Registrar passagem de servico.
- Registrar resumo operacional.
- Controlar substituicao de lider.
- Finalizar livro.

Listas usadas:

- Plantoes
- EquipePlantao

Subtelas:

- Registro do Plantao
- Equipe do Plantao
- Conferencia de Viaturas e Materiais
- Inspecao de Rotina
- Finalizacao do Livro do Plantao

### 3.3 Ocorrencias

Finalidade:

- Listar ocorrencias do plantao.
- Criar nova ocorrencia.
- Registrar local operacional detalhado.
- Registrar lider responsavel no momento do fato.
- Registrar autoria do lancamento.
- Registrar se houve registro posterior ou por terceiro.
- Vincular pendencia gerada.

Listas usadas:

- Ocorrencias
- Plantoes
- LocaisOperacionais
- PendenciasOperacionais

Subtelas:

- Ocorrencias do Plantao
- Nova Ocorrencia

### 3.4 Pendencias

Finalidade:

- Listar pendencias abertas.
- Criar nova pendencia.
- Acompanhar pendencias entre plantoes.
- Concluir ou cancelar pendencias.

Listas usadas:

- PendenciasOperacionais
- Plantoes
- LocaisOperacionais

Subtelas:

- Pendencias Operacionais
- Nova Pendencia

### 3.5 POTs e Ciencia

Finalidade:

- Controlar POTs revisados.
- Registrar ciencia da equipe.

Status:

- Fase posterior.
- Listas especificas ainda serao modeladas.

### 3.6 Historico

Finalidade:

- Consultar plantoes finalizados.
- Consultar ocorrencias anteriores.
- Consultar pendencias encerradas.
- Consultar historico por posto, local, data ou responsavel.

Listas usadas:

- Plantoes
- Ocorrencias
- PendenciasOperacionais
- LocaisOperacionais

### 3.7 Relatorios

Finalidade:

- Gerar consultas operacionais.
- Apoiar acompanhamento da supervisao.
- Filtrar por periodo, posto, local, tipo, status e gravidade.

Listas usadas:

- Plantoes
- EquipePlantao
- Ocorrencias
- PendenciasOperacionais
- LocaisOperacionais

### 3.8 Administracao

Finalidade:

- Administrar usuarios.
- Administrar locais operacionais.
- Administrar parametros.
- Administrar permissoes.
- Validar novos locais cadastrados.

Listas usadas:

- Usuarios
- LocaisOperacionais

## 4. Ordem recomendada de implementacao

1. Conectar listas SharePoint no Power Apps.
2. Criar AppShell visual.
3. Criar navegacao lateral.
4. Criar Dashboard Operacional.
5. Criar Registro do Plantao.
6. Criar Equipe do Plantao.
7. Criar Pendencias Operacionais.
8. Criar Ocorrencias.
9. Criar Administracao basica de LocaisOperacionais.
10. Criar Historico e Relatorios.

## 5. Regras de navegacao

- O usuario deve saber sempre em qual plantao esta trabalhando.
- O plantao atual deve ficar visivel no topo ou em componente de resumo.
- A navegacao nao deve depender de telas soltas sem padrao.
- Dashboard deve ser a tela inicial.
- Acoes principais devem ficar claras e antes do rodape.

## 6. Proxima etapa

Detalhar componentes reutilizaveis para Power Apps.
