# Componentes Reutilizaveis do Power Apps

Projeto: Livro de Ocorrencias Digital da Brigada de Incendio
Data: 09/06/2026
Status: Planejamento inicial

## 1. Objetivo

Definir componentes reutilizaveis para evitar variacoes visuais e funcionais durante a implementacao real no Power Apps.

## 2. Componentes principais

### 2.1 AppShell

Finalidade:

- Estrutura principal comum do aplicativo.
- Controlar topo, menu lateral, area de conteudo e rodape.

Deve conter:

- Header
- Sidebar
- Area de conteudo
- Footer

Regras:

- Nao usar rodape fixo ou sobreposto.
- Botoes finais das telas devem aparecer antes do rodape.
- Manter padrao unico em todas as telas.

### 2.2 Header

Finalidade:

- Exibir nome oficial do aplicativo.
- Exibir usuario logado.
- Exibir contexto do plantao atual, quando aplicavel.

Conteudos sugeridos:

- Livro de Ocorrencias Digital da Brigada de Incendio
- Nome do usuario
- Perfil de acesso
- Plantao atual

### 2.3 Sidebar

Finalidade:

- Navegacao principal do aplicativo.

Itens:

- Dashboard
- Livro do Plantao
- Ocorrencias
- Pendencias
- POTs e Ciencia
- Historico
- Relatorios
- Administracao

### 2.4 Footer

Finalidade:

- Exibir informacoes institucionais e status do aplicativo.

Regras:

- Deve ficar no fluxo normal da tela.
- Nao deve ser fixed, sticky, absolute ou sobreposto.

### 2.5 ShiftSummary

Finalidade:

- Exibir resumo do plantao atual.

Campos:

- CodigoPlantao
- DataPlantao
- Turno
- PlantaoExtra
- PostoServico
- StatusLivro
- LiderEscalado
- LiderResponsavelAtual
- HouveSubstituicaoLider

### 2.6 StatusBadge

Finalidade:

- Exibir status de forma padronizada.

Usos:

- StatusLivro
- StatusPendencia
- StatusOcorrencia
- StatusCadastro
- Presenca
- Prioridade
- Gravidade

### 2.7 ActionButtons

Finalidade:

- Padronizar botoes de acao das telas.

Acoes comuns:

- Salvar
- Cancelar
- Editar
- Finalizar
- Reabrir
- Registrar
- Concluir
- Voltar

Regra:

- Botoes finais devem ficar antes do Footer.

### 2.8 Card

Finalidade:

- Agrupar informacoes resumidas.

Usos:

- Card de plantao
- Card de pendencia
- Card de ocorrencia
- Card de local operacional

### 2.9 SectionCard

Finalidade:

- Separar secoes dentro de formularios longos.

Exemplos:

- Dados gerais
- Localizacao
- Responsabilidade
- Registro posterior
- Conclusao
- Observacoes

### 2.10 FilterBar

Finalidade:

- Padronizar filtros em listas e relatorios.

Filtros comuns:

- Periodo
- PostoServico
- LocalOperacional
- Status
- Prioridade
- Gravidade
- Responsavel

### 2.11 TimelineCard

Finalidade:

- Exibir historico cronologico de eventos.

Usos:

- Historico do plantao
- Historico de ocorrencia
- Historico de pendencia
- Transferencia de responsabilidade do lider

### 2.12 FormSection

Finalidade:

- Padronizar grupos de campos em formularios.

Usos:

- Nova ocorrencia
- Nova pendencia
- Registro do plantao
- Equipe do plantao
- Cadastro de local operacional

## 3. Componentes especificos recomendados

### 3.1 LocalSelector

Finalidade:

- Permitir busca e selecao de LocalOperacional.
- Preencher campos de snapshot textual do local.
- Permitir cadastro de novo local quando necessario.

Campos afetados:

- LocalOperacional
- ZonaRegistro
- LocalRegistro
- AreaRegistro
- ElevacaoRegistro
- ComplementoLocal

### 3.2 LeaderResponsibilityPanel

Finalidade:

- Exibir e controlar responsabilidade do livro.

Campos:

- LiderEscalado
- LiderResponsavelAtual
- HouveSubstituicaoLider
- LiderSubstituido
- MotivoSubstituicaoLider
- DataHoraAssuncaoLider
- ObservacoesSubstituicaoLider

### 3.3 OccurrenceResponsibilityPanel

Finalidade:

- Separar responsabilidade do fato e autoria do registro.

Campos:

- LiderResponsavelNoMomento
- RegistradoPor
- DataRegistro
- RegistroPosteriorPorTerceiro
- MotivoRegistroPosterior
- InformadoPor
- ResponsavelAcompanhamentoOcorrencia

## 4. Regras visuais obrigatorias

- Interface em Portugues do Brasil.
- Nao usar nomes em ingles na interface.
- Nao usar Brigada Digital, Fire Brigade, Logbook, Occurrences, Pendencies ou New Entry.
- Usar o nome oficial: Livro de Ocorrencias Digital da Brigada de Incendio.
- Manter header, sidebar e footer padronizados.
- Evitar duplicacao de layout entre telas.

## 5. Proxima etapa

Preparar prompt mestre tecnico para orientar a implementacao inicial do Power Apps.
