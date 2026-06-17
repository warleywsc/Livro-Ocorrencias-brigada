# Fase Inicial do Power Apps

Projeto: Livro de Ocorrencias Digital da Brigada de Incendio
Data: 09/06/2026
Status: Planejamento inicial

## 1. Objetivo

Preparar a primeira fase de implementacao no Power Apps usando as listas SharePoint ja criadas e validadas com dados ficticios.

## 2. Fonte de dados

Site SharePoint:

https://etnweb.sharepoint.com/sites/BrigadaIncendio

Listas principais:

- Usuarios
- Plantoes
- EquipePlantao
- LocaisOperacionais
- PendenciasOperacionais
- Ocorrencias

## 3. Primeiras telas recomendadas

### 3.1 Dashboard Operacional

Objetivo:

- Exibir plantao atual.
- Exibir status do livro.
- Exibir lider escalado e lider responsavel atual.
- Mostrar pendencias abertas.
- Mostrar ocorrencias recentes.

### 3.2 Registro do Plantao

Objetivo:

- Abrir ou editar livro do plantao.
- Registrar lider escalado.
- Registrar lider responsavel atual.
- Controlar substituicao de lider.

### 3.3 Equipe do Plantao

Objetivo:

- Registrar integrantes do plantao.
- Registrar presenca.
- Registrar substituicoes.
- Registrar atuacao extra.

### 3.4 Ocorrencias do Plantao

Objetivo:

- Listar ocorrencias vinculadas ao plantao.
- Permitir criar nova ocorrencia.
- Separar responsabilidade do fato e autoria do registro.

### 3.5 Pendencias Operacionais

Objetivo:

- Listar pendencias abertas.
- Criar nova pendencia.
- Acompanhar status e responsavel.

## 4. Regras iniciais de permissao

Leitura:

- Pode visualizar registros autorizados.

Operador:

- Pode registrar informacoes operacionais permitidas.

Lider:

- Pode abrir, preencher e finalizar o livro do plantao quando for LiderResponsavelAtual.

Supervisor:

- Pode consultar, acompanhar e corrigir registros operacionais.

Administrador:

- Pode administrar cadastros, permissoes, parametros e ajustes.

## 5. Regras criticas

- O livro pertence ao plantao, nao a pessoa.
- Quem edita/finaliza o livro e o LiderResponsavelAtual.
- Substituicao de lider deve gerar transferencia formal de responsabilidade.
- Ocorrencias devem preservar o lider responsavel no momento do fato.
- Locais operacionais devem ser pesquisaveis.
- Registros devem guardar snapshot textual do local.

## 6. Proxima etapa tecnica

Antes de criar telas definitivas, preparar um mapa de navegacao do Power Apps e uma lista de componentes reutilizaveis.
