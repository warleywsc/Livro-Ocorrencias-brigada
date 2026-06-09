# Fechamento Estrutural das Listas Principais

Projeto: Livro de Ocorrencias Digital da Brigada de Incendio
Data: 08/06/2026
Status: Criacao estrutural principal concluida

## 1. Site SharePoint

https://etnweb.sharepoint.com/sites/BrigadaIncendio

## 2. Listas principais criadas

- Usuarios
- Plantoes
- EquipePlantao
- LocaisOperacionais
- PendenciasOperacionais
- Ocorrencias

## 3. Decisoes consolidadas

### 3.1 Posto de Servico

PostoServico representa o posto amplo de atuacao:

- Angra 1
- Angra 2
- Angra 3
- Brigada de Incendio

### 3.2 Local Operacional

LocalOperacional representa a localizacao detalhada do fato, ocorrencia, inspecao ou pendencia.

A lista LocaisOperacionais foi criada para permitir pesquisa e cadastro de locais detalhados.

### 3.3 Livro por plantao

O livro pertence ao plantao, nao a pessoa.

Se houver substituicao de lider dentro do mesmo plantao, o livro continua sendo o mesmo.

Se iniciar outro turno ou outro plantao, deve existir outro livro.

### 3.4 Responsabilidade do livro

A lista Plantoes separa:

- LiderEscalado
- LiderResponsavelAtual
- HouveSubstituicaoLider
- LiderSubstituido
- MotivoSubstituicaoLider
- DataHoraAssuncaoLider
- ObservacoesSubstituicaoLider

### 3.5 Equipe do plantao

A lista EquipePlantao registra os integrantes, presenca, substituicao, atuacao extra e horarios de atuacao.

### 3.6 Ocorrencias

A lista Ocorrencias separa:

- lider responsavel no momento do fato;
- usuario que registrou;
- registro posterior ou por terceiro;
- pessoa/equipe que informou os dados;
- responsavel pelo acompanhamento atual.

### 3.7 Pendencias

A lista PendenciasOperacionais controla pendencias entre plantoes e permite vinculo com LocalOperacional.

## 4. Listas aptas para validacao ficticia

As listas estruturais principais estao prontas para receber dados ficticios de teste.

## 5. Proxima etapa

Preparar validacao com dados ficticios, sem usar dados reais sensiveis.

Validacao sugerida:

- cadastrar usuarios ficticios;
- cadastrar locais operacionais ficticios;
- cadastrar um plantao ficticio;
- vincular equipe ao plantao;
- registrar uma pendencia ficticia;
- registrar uma ocorrencia ficticia;
- validar relacionamentos entre listas.
