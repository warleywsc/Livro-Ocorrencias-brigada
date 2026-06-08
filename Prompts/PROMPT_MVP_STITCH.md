# Prompt MVP — Google Stitch

Crie o design visual de um MVP web responsivo chamado:

# Livro Digital da Brigada de Incêndio

Use o arquivo `DESIGN.md` como sistema visual global do projeto.

O objetivo é criar a primeira versão visual de um sistema interno para substituir o livro físico/manual de ocorrências da Brigada de Incêndio.

Esta primeira versão deve ser um MVP visual bem estruturado, simples, profissional e viável para futura implementação em Power Apps com Microsoft Lists / SharePoint Lists.

Não tente criar o sistema completo nesta primeira rodada.
O foco é gerar as telas principais com boa organização visual, navegação clara, identidade institucional, acessibilidade e estrutura compatível com uso real.

---

# Objetivo do MVP

O app deve funcionar como:

**Livro de passagem de serviço + controle de pendências operacionais + registro estruturado de ocorrências.**

O sistema deve permitir visualizar e prototipar o fluxo básico:

1. Abertura do plantão
2. Preenchimento dos dados principais
3. Registro de equipe
4. Conferência de viaturas e inspeção de rotina
5. Registro de ocorrências
6. Acompanhamento de pendências operacionais
7. Registro de POTs revisados e confirmação de ciência
8. Finalização do plantão
9. Consulta posterior em histórico/relatório

---

# Escopo controlado da primeira versão

Criar apenas as telas essenciais do MVP.

Não criar módulos extras.

Não criar:

- Chat interno
- IA
- Mapa geográfico
- Gamificação
- Assinatura biométrica avançada
- Integrações externas
- Telas excessivamente detalhadas
- Tabelas enormes
- Animações complexas
- Efeitos visuais difíceis de reproduzir no Power Apps

O design deve ser bonito, mas simples o suficiente para ser recriado futuramente no Power Apps.

---

# Compatibilidade com Power Apps e Microsoft Lists

Criar telas que possam ser reproduzidas de forma realista no Power Apps.

Evitar:

- Componentes muito personalizados
- Layouts com sobreposição excessiva
- Tabelas muito largas
- Cards com informação demais
- Menus difíceis de reproduzir
- Interações que dependam de código web avançado

Preferir:

- Cards simples
- Galerias
- Formulários
- Abas
- Filtros laterais ou superiores
- Modais simples
- Botões claros
- Tabelas objetivas
- Layout responsivo simples

O app deve parecer compatível com ambiente Microsoft 365, SharePoint, Microsoft Lists e Power Apps.

---

# Perfis de acesso no MVP

Mostrar no design que existem perfis diferentes, mas sem criar telas complexas de permissão nesta primeira rodada.

## Líder de Brigada

Preenche dados do plantão, equipe, viaturas, inspeção, ocorrências, pendências, POTs e finaliza o livro.

## Supervisor

Consulta livros finalizados, acompanha pendências, verifica ciência de POTs e gera relatórios.

## Gerente

Consulta indicadores, histórico, pendências críticas e relatórios.

## Perfil Delegado / Consulta

Consulta registros autorizados sem editar.

## Administrador

Gerencia cadastros, usuários, perfis e configurações.

---

# Regras básicas do sistema

Representar visualmente estas regras:

1. O líder preenche o livro do plantão.
2. Enquanto o livro estiver em rascunho, pode ser editado.
3. Depois de finalizado, fica bloqueado para edição comum.
4. Alterações posteriores devem ser feitas como retificação.
5. O próximo turno deve visualizar as pendências abertas.
6. O sistema deve separar ocorrência nova de pendência que permanece.
7. POT revisado deve permitir confirmação de ciência por usuário.
8. A confirmação de ciência deve aparecer apenas se o usuário logado ainda não confirmou.
9. Ações importantes devem registrar usuário, data e hora.

---

# Validação de dados no MVP

Prever visualmente validações simples:

Campos obrigatórios para abrir plantão:

- Cliente
- Posto
- Data
- Turno
- Líder de Brigada
- Responsável pelo preenchimento

Campos obrigatórios antes de finalizar:

- Equipe
- Viaturas principais
- Inspeção de rotina
- Ocorrências revisadas
- Pendências verificadas
- POTs revisados verificados

Regras visuais:

- Campo obrigatório vazio deve ficar destacado.
- Item com alteração exige observação.
- Ocorrência com vítima exige descrição.
- Pendência normalizada exige observação.
- POT revisado exige sigla.
- Livro finalizado deve ficar em modo somente leitura.

Mensagens de validação:

- “Informe o líder de brigada antes de avançar.”
- “Este item foi marcado como anormal. Descreva a alteração encontrada.”
- “Para finalizar o plantão, confirme a revisão das pendências abertas.”
- “Ciência registrada com sucesso.”
- “O livro finalizado não pode ser editado diretamente. Use uma retificação.”

---

# Revisão de escrita

Todos os textos da interface devem estar corretos em português do Brasil.

Revisar:

- Ortografia
- Acentuação
- Concordância
- Uso de maiúsculas e minúsculas
- Padronização de termos técnicos
- Consistência entre nomes de telas, botões e campos

Padronizar termos:

- Brigada de Incêndio
- Livro Digital
- Ocorrências
- Pendências Operacionais
- Procedimentos de Operação e Testes
- POTs Revisados
- Confirmação de Ciência
- Inspeção de Rotina
- Conferência de Viaturas
- Finalização do Plantão
- Retificação
- Líder de Brigada
- Supervisor
- Gerente

Evitar erros como:

- “materias” no lugar de “materiais”
- “ocorrencia” sem acento
- “briagda” no lugar de “brigada”
- “perfils” no lugar de “perfis”
- “ciência” sem acento

---

# Nomes técnicos compatíveis com Microsoft Lists

Quando mostrar estrutura técnica ou nomes de campos internos, usar nomes simples, sem acento e sem espaços.

Exemplos:

- CodigoPlantao
- DataPlantao
- Turno
- StatusLivro
- LiderBrigada
- Unidade
- Local
- SistemaEquipamento
- TipoOcorrencia
- Prioridade
- DataHoraRegistro
- RegistradoPor
- CodigoPOT
- SiglaPOT
- DataHoraCiencia

Na interface do usuário, usar rótulos amigáveis.

Exemplo:

- Campo interno: CodigoPlantao
- Rótulo visível: Código do Plantão

---

# Dados fictícios

Usar dados fictícios realistas, sem expor nomes reais de pessoas.

Exemplos permitidos:

- Unidade: Base, Angra 1, Angra 2, Angra 3
- Local: CEDOT, UBA, UMA, UYA, ETG, EAD
- Viaturas: AHQ1, AHQ2, ABT1, Viatura Toro
- Tipo de ocorrência: Sistema isolado, Ronda, Vazamento, Alarme, Hidrante, Material, EPR
- Status: Aberta, Permanece, Normalizada, Concluída
- Prioridade: Baixa, Média, Alta, Crítica
- POT: 2PPIC-12
- SOT/LT: usar números fictícios claramente simulados

Usar nomes genéricos:

- Líder de Brigada
- Bombeiro 01
- Supervisor
- Gerente
- Usuário Logado

---

# Telas do MVP

Criar apenas estas telas principais.

---

## 1. Login / Identificação do Usuário

Tela simples com:

- Logotipo ou área institucional
- Nome do app
- Mensagem: “Acesso restrito a usuários autorizados.”
- Card do usuário logado:
  - Nome
  - Perfil
  - Unidade
- Botão: Entrar no sistema
- Seletor visual de tema

---

## 2. Dashboard Operacional

Tela principal com:

- Card do plantão atual:
  - Data
  - Turno
  - Líder de Brigada
  - Status do livro
  - Botão: Abrir Plantão

Indicadores rápidos:

- Ocorrências do turno
- Pendências abertas
- Pendências críticas
- Viaturas com alteração
- POTs com ciência pendente
- Registros aguardando finalização

Alertas principais:

- POT aguardando ciência
- Pendência crítica aberta
- Viatura fora de operação
- Inspeção com alteração

Lista curta de últimas ocorrências.

Menu lateral:

- Dashboard
- Plantão
- Ocorrências
- Pendências
- POTs
- Histórico
- Relatórios
- Administração

---

## 3. Livro do Plantão

Esta tela deve concentrar o fluxo principal em abas ou etapas, para evitar excesso de telas no MVP.

Abas/etapas:

1. Dados do Plantão
2. Equipe
3. Viaturas e Materiais
4. Inspeção de Rotina
5. Finalização

### Aba Dados do Plantão

Campos:

- Cliente: Eletrobrás Eletronuclear
- Posto: CNAAA Itaorna
- Data
- Turno: Dia / Noite
- Recebimento do serviço: Sem alteração / Com alteração
- Observação
- Tema do DDSMS
- Responsável pelo preenchimento
- Status: Rascunho / Em preenchimento / Finalizado

### Aba Equipe

Cards resumidos:

- Base
- Resgate
- Angra 1
- Angra 2
- Angra 3
- Motoristas

Campos principais:

- Líder de Brigada
- Bombeiros
- Resgatistas
- Motoristas

### Aba Viaturas e Materiais

Cards:

- AHQ1
- AHQ2
- ABT1
- Viatura Toro

Campos:

- Status: Normal / Com alteração / Fora de operação
- Observação
- Anexo/foto
- Quilometragem inicial/final quando aplicável

### Aba Inspeção de Rotina

Checklist resumido com:

- CEDOT
- Estação Gama e Canteiro de Obra
- Sistema de alarme dos galpões
- Extintores
- Redes de incêndio
- Reservatórios
- Lanternas
- Medidor de gases
- Luvas de combate a incêndio
- POTs revisados
- Kit carreta de emergência

Cada item deve ter:

- Status
- Observação
- Anexo quando aplicável

### Aba Finalização

Mostrar checklist final:

- Dados do plantão preenchidos
- Equipe preenchida
- Viaturas conferidas
- Inspeção preenchida
- Pendências verificadas
- POTs verificados

Botões:

- Salvar rascunho
- Voltar
- Finalizar plantão
- Gerar relatório

Após finalizar, mostrar aviso:

“Livro finalizado. Alterações posteriores deverão ser registradas como retificação.”

---

## 4. Ocorrências do Plantão

Tela para registrar e consultar ocorrências novas.

Elementos:

- Botão: Nova Ocorrência
- Filtros simples:
  - Unidade
  - Status
  - Prioridade
  - Tipo
- Lista/cards de ocorrências

Card de ocorrência:

- Hora
- Unidade
- Local
- Tipo
- Descrição resumida
- Status
- Prioridade
- Indicadores:
  - Vítima
  - Dano material
  - Acionamento externo
  - Anexo
  - SOT/LT/cartão amarelo

Modal ou painel de Nova Ocorrência com campos:

- Data
- Hora
- Unidade
- Local
- Sistema/equipamento
- Tipo de ocorrência
- Descrição
- Providências adotadas
- Houve vítima?
- Houve dano material?
- Houve acionamento externo?
- SOT
- LT
- Cartão amarelo
- Responsável comunicado
- Status
- Prioridade
- Anexos/fotos

---

## 5. Pendências Operacionais

Tela para controlar pendências que passam de um turno para outro.

Organizar por abas ou filtros:

- Base
- Angra 1
- Angra 2
- Angra 3

Card de pendência:

- Título resumido
- Unidade
- Local
- Sistema/equipamento
- Data de origem
- Última atualização
- Status
- Prioridade
- Dias em aberto
- SOT
- LT
- Cartão amarelo
- Responsável comunicado
- Descrição resumida

Botões:

- Atualizar
- Manter pendente
- Normalizar
- Anexar evidência

Status:

- Aberta
- Permanece
- Em acompanhamento
- Normalizada
- Concluída
- Arquivada

---

## 6. POTs Revisados e Ciência

Tela para procedimentos revisados e confirmação de ciência.

Título:

**POTs Revisados e Ciência de Procedimentos**

Explicação:

“Os Procedimentos de Operação e Testes revisados devem ser registrados para ciência dos líderes e demais perfis autorizados.”

Card de POT:

- Sigla do POT
- Título/assunto
- Unidade/área relacionada
- Data da revisão
- Versão/revisão
- Registrado por
- Status
- Botão: Ver procedimento
- Botão: Confirmar ciência

Regra visual:

- Se o usuário logado ainda não confirmou, mostrar botão “Confirmar ciência”.
- Se já confirmou, mostrar: “Ciência registrada em [data/hora].”

Área resumida para supervisão:

- Total de líderes
- Confirmaram ciência
- Pendentes
- Percentual de ciência

---

## 7. Histórico e Relatório

Unificar no MVP a consulta histórica e a visualização do relatório.

Filtros:

- Período
- Turno
- Unidade
- Status
- Com pendência aberta
- Com POT revisado

Tabela/lista:

- Data
- Turno
- Líder
- Ocorrências
- Pendências abertas
- POTs revisados
- Status
- Botão: Visualizar

Ao visualizar, mostrar relatório com seções:

- Cabeçalho institucional
- Dados do plantão
- Equipe
- Viaturas
- Inspeção
- Ocorrências
- Pendências
- POTs revisados
- Ciência
- Finalização

Botões:

- Imprimir
- Exportar PDF
- Voltar

---

## 8. Relatórios e Administração

Tela resumida no MVP, sem excesso de detalhe.

Separar em duas áreas:

### Indicadores

Cards:

- Ocorrências por período
- Pendências abertas
- Pendências críticas
- Viaturas com alteração
- POTs com ciência pendente
- Registros finalizados

Gráficos simples:

- Ocorrências por unidade
- Pendências por status
- Ciência de POTs

### Administração

Cards de configuração:

- Usuários e perfis
- Bombeiros
- Viaturas
- Locais
- Tipos de ocorrência
- Itens de inspeção
- Procedimentos
- Status e prioridades

Cada card deve ter botão “Gerenciar”.

---

# Estados obrigatórios das telas

Prever visualmente estados comuns de uso real:

- Com dados
- Sem dados
- Carregando
- Erro
- Sem permissão
- Somente leitura
- Finalizado/bloqueado
- Filtros sem resultado

Exemplos de mensagens:

- “Nenhuma ocorrência registrada neste plantão.”
- “Nenhuma pendência encontrada para os filtros selecionados.”
- “Você não possui permissão para editar este registro.”
- “Livro finalizado. Alterações devem ser feitas por retificação.”
- “Carregando pendências operacionais...”

---

# Regras visuais de status

Usar badges com texto:

- Rascunho
- Em preenchimento
- Finalizado
- Aberta
- Permanece
- Em acompanhamento
- Normalizada
- Concluída
- Arquivada
- Crítica
- Ciência pendente
- Ciência confirmada

No tema de alto contraste, não depender apenas da cor.

---

# Cabeçalho e rodapé

Cabeçalho:

- Logotipo ou área institucional
- Nome do app
- Nome do usuário logado
- Perfil
- Seletor de tema
- Acessibilidade

Rodapé discreto:

“Livro Digital da Brigada de Incêndio — Sistema interno de apoio ao registro operacional.”

Não exibir autoria pessoal no rodapé ou nas telas.

---

# Resultado esperado da Rodada 1

Gerar um MVP visual profissional, consistente e viável para futura implementação em Power Apps.

O resultado deve mostrar bem:

- Identidade institucional
- Fluxo principal do plantão
- Registro de ocorrências
- Controle de pendências
- POTs revisados e ciência
- Histórico/relatório
- Acessibilidade
- Tema claro, escuro e alto contraste
- Boa organização visual
- Componentes reutilizáveis
- Campos e filtros sem sobreposição
- Contraste adequado
- Ícones coerentes
- Textos corretos em português do Brasil

Não precisa detalhar todas as regras avançadas nesta primeira rodada.
Não criar telas demais.
Priorizar qualidade visual, clareza, viabilidade e organização.
