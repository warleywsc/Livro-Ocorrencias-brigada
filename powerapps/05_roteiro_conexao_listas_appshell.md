# Roteiro Pratico — Conectar Listas e Criar AppShell Inicial

Projeto: Livro de Ocorrencias Digital da Brigada de Incendio
Data: 09/06/2026
Status: Roteiro pratico preparado

## 1. Objetivo

Orientar a primeira etapa pratica dentro do Power Apps:

- criar app canvas inicial;
- conectar as listas SharePoint;
- montar estrutura visual base;
- criar navegacao inicial;
- preparar Dashboard Operacional simples com dados ficticios.

## 2. Site SharePoint

https://etnweb.sharepoint.com/sites/BrigadaIncendio

## 3. Listas a conectar

Conectar as seguintes listas:

- Usuarios
- Plantoes
- EquipePlantao
- LocaisOperacionais
- PendenciasOperacionais
- Ocorrencias

## 4. Criacao do aplicativo

Recomendacao inicial:

- Tipo: Aplicativo de tela em branco
- Nome: Livro de Ocorrencias Digital da Brigada de Incendio
- Formato inicial: Tablet ou responsivo, conforme disponibilidade do ambiente

Observacao:

Mesmo que o uso futuro seja mobile/tablet, a primeira etapa deve priorizar estrutura, dados e navegacao.

## 5. Ordem pratica dentro do Power Apps

### 5.1 Criar app em branco

1. Acessar Power Apps.
2. Criar aplicativo de tela em branco.
3. Nomear como Livro de Ocorrencias Digital da Brigada de Incendio.
4. Salvar antes de iniciar grandes alteracoes.

### 5.2 Conectar dados

Adicionar fonte de dados SharePoint usando o site:

https://etnweb.sharepoint.com/sites/BrigadaIncendio

Selecionar as listas:

- Usuarios
- Plantoes
- EquipePlantao
- LocaisOperacionais
- PendenciasOperacionais
- Ocorrencias

### 5.3 Criar telas iniciais

Telas iniciais recomendadas:

- scrDashboard
- scrRegistroPlantao
- scrEquipePlantao
- scrPendencias
- scrOcorrencias
- scrAdministracao

### 5.4 Criar estrutura visual base

Antes de montar regras complexas, criar a estrutura visual comum:

- Header
- Sidebar
- AreaConteudo
- Footer

Regras:

- Footer no fluxo normal da tela.
- Footer nunca fixo, sobreposto ou flutuante.
- Botoes principais sempre antes do Footer.
- Header e Sidebar devem manter padrao visual em todas as telas.

## 6. AppShell inicial

O AppShell inicial deve conter:

### Header

Conteudo:

- Nome oficial do app;
- Usuario logado;
- Perfil, quando disponivel;
- Codigo do plantao atual, quando selecionado.

### Sidebar

Itens:

- Dashboard
- Livro do Plantao
- Ocorrencias
- Pendencias
- POTs e Ciencia
- Historico
- Relatorios
- Administracao

### Area de conteudo

Area onde cada tela exibira seus cards, galerias e formularios.

### Footer

Conteudo sugerido:

- Brigada de Incendio
- Ambiente de validacao
- Dados ficticios, enquanto estiver em teste

## 7. Dashboard inicial

O primeiro Dashboard deve ser simples.

Componentes sugeridos:

- Card do plantao atual;
- Card de status do livro;
- Card de lider escalado;
- Card de lider responsavel atual;
- Card de pendencias abertas;
- Card de ocorrencias do plantao;
- lista simples de pendencias abertas;
- lista simples de ocorrencias recentes.

## 8. Dados ficticios de referencia

Plantao de referencia:

PL-2026-06-08-DIA-BI

Esse plantao deve ser usado apenas para validar leitura, filtros e relacionamentos.

## 9. Regras iniciais para formulas

Evitar formulas complexas na primeira etapa.

Priorizar:

- conexao correta das listas;
- exibicao dos dados;
- navegacao funcionando;
- filtros basicos;
- layout padronizado.

## 10. Variaveis iniciais sugeridas

Variaveis/conceitos para etapa futura:

- varUsuarioAtual
- varPerfilUsuario
- varPlantaoAtual
- varMenuSelecionado
- varModoFormulario

Na primeira etapa, varPlantaoAtual pode apontar para o plantao ficticio PL-2026-06-08-DIA-BI.

## 11. Validacao manual esperada

A primeira etapa sera considerada aprovada se:

- o app abrir sem erro;
- as listas estiverem conectadas;
- o Dashboard mostrar o plantao ficticio;
- as pendencias ficticias aparecerem;
- as ocorrencias ficticias aparecerem;
- o menu lateral navegar entre telas simples;
- o Header e Footer aparecerem de forma padronizada;
- nao houver uso de dados reais sensiveis.

## 12. O que nao fazer nesta etapa

- Nao criar automacoes Power Automate ainda.
- Nao publicar para usuarios finais.
- Nao criar regras complexas de permissao ainda.
- Nao importar dados reais.
- Nao tentar reproduzir todas as 15 telas de uma vez.
- Nao criar telas duplicadas sem padrao.

## 13. Proxima etapa apos este roteiro

Executar manualmente no Power Apps:

1. criar app canvas;
2. conectar listas SharePoint;
3. montar AppShell inicial;
4. criar Dashboard inicial;
5. validar com dados ficticios.
