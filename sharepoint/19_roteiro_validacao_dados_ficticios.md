# Roteiro de Validacao com Dados Ficticios

Projeto: Livro de Ocorrencias Digital da Brigada de Incendio
Data: 08/06/2026
Status: Roteiro preparado

## 1. Objetivo

Validar se as listas principais criadas no SharePoint funcionam corretamente entre si, usando apenas dados ficticios.

Site:

https://etnweb.sharepoint.com/sites/BrigadaIncendio

## 2. Listas a validar

- Usuarios
- Plantoes
- EquipePlantao
- LocaisOperacionais
- PendenciasOperacionais
- Ocorrencias

## 3. Regras da validacao

- Nao usar dados reais sensiveis.
- Usar nomes ficticios.
- Usar ocorrencias ficticias.
- Validar apenas estrutura, relacionamentos, obrigatoriedade e campos de pesquisa.
- Nao publicar para usuarios finais.

## 4. Dados ficticios sugeridos

### 4.1 Usuarios

Cadastrar 3 usuarios ficticios:

#### Usuario 1

- Titulo: Lider Teste 01
- Email: lider.teste01@exemplo.local
- Matricula: LT001
- Funcao: Lider
- PerfilAcesso: Lider
- PostoServico: Brigada de Incendio
- Ativo: Sim

#### Usuario 2

- Titulo: Bombeiro Teste 01
- Email: bombeiro.teste01@exemplo.local
- Matricula: BT001
- Funcao: Bombeiro
- PerfilAcesso: Operador
- PostoServico: Angra 1
- Ativo: Sim

#### Usuario 3

- Titulo: Brigadista Teste 01
- Email: brigadista.teste01@exemplo.local
- Matricula: BGT001
- Funcao: Brigadista
- PerfilAcesso: Operador
- PostoServico: Angra 2
- Ativo: Sim

### 4.2 LocaisOperacionais

Cadastrar 2 locais ficticios:

#### Local 1

- Titulo: Angra 3 | Z3 | 1UBD | Area 0239 | Elev. +5,15
- CodigoLocalOperacional: LOC-TESTE-001
- PostoServico: Angra 3
- Zona: Z3
- Local: 1UBD
- Area: 0239
- Elevacao: +5,15
- LocalArea: 1UBD - 0239
- Complemento: Local ficticio para teste de ocorrencia.
- DescricaoReferencia: Area ficticia baseada em estrutura de teste.
- StatusCadastro: Ativo
- FonteCadastro: Cadastrado manualmente
- Ativo: Sim

#### Local 2

- Titulo: Brigada de Incendio | ZBI | Sala Operacional | Area 001
- CodigoLocalOperacional: LOC-TESTE-002
- PostoServico: Brigada de Incendio
- Zona: ZBI
- Local: Sala Operacional
- Area: 001
- Elevacao: Terreo
- LocalArea: Sala Operacional - 001
- Complemento: Local ficticio para teste de pendencia.
- DescricaoReferencia: Local interno ficticio da Brigada.
- StatusCadastro: Ativo
- FonteCadastro: Cadastrado manualmente
- Ativo: Sim

### 4.3 Plantoes

Cadastrar 1 plantao ficticio:

- Titulo: PL-2026-06-08-DIA-BI
- CodigoPlantao: PL-2026-06-08-DIA-BI
- DataPlantao: 08/06/2026
- Turno: Dia
- PlantaoExtra: Nao
- PostoServico: Brigada de Incendio
- StatusLivro: Em preenchimento
- PassagemServico: Plantao ficticio criado para validacao estrutural.
- ResumoOperacional: Sem anormalidades reais. Registro apenas para teste.
- DataAbertura: 08/06/2026 08:00
- LiderEscalado: Lider Teste 01, se o campo Pessoa localizar usuario
- LiderResponsavelAtual: Lider Teste 01, se o campo Pessoa localizar usuario
- HouveSubstituicaoLider: Nao
- MotivoSubstituicaoLider: Nao se aplica

### 4.4 EquipePlantao

Cadastrar 2 integrantes ficticios vinculados ao plantao PL-2026-06-08-DIA-BI:

#### Integrante 1

- Titulo: Lider Teste 01 - PL-2026-06-08-DIA-BI
- Plantao: PL-2026-06-08-DIA-BI
- NomeIntegrante: Lider Teste 01
- FuncaoNoPlantao: Lider
- PostoServico: Brigada de Incendio
- Presenca: Presente
- TipoVinculoPlantao: Escalado
- MotivoSubstituicao: Nao se aplica
- HorarioInicioAtuacao: 08/06/2026 08:00
- HorarioFimAtuacao: 08/06/2026 20:00
- AtuacaoExtra: Nao

#### Integrante 2

- Titulo: Bombeiro Teste 01 - PL-2026-06-08-DIA-BI
- Plantao: PL-2026-06-08-DIA-BI
- NomeIntegrante: Bombeiro Teste 01
- FuncaoNoPlantao: Bombeiro
- PostoServico: Angra 1
- Presenca: Presente
- TipoVinculoPlantao: Escalado
- MotivoSubstituicao: Nao se aplica
- HorarioInicioAtuacao: 08/06/2026 08:00
- HorarioFimAtuacao: 08/06/2026 20:00
- AtuacaoExtra: Nao

### 4.5 PendenciasOperacionais

Cadastrar 1 pendencia ficticia:

- Titulo: Pendencia ficticia em local operacional
- NumeroPendencia: PEN-TESTE-001
- PlantaoOrigem: PL-2026-06-08-DIA-BI
- OrigemPendencia: Manual
- Descricao: Pendencia ficticia criada para validar relacionamento com plantao e local operacional.
- PostoServico: Brigada de Incendio
- LocalOperacional: Brigada de Incendio | ZBI | Sala Operacional | Area 001
- PendenciaComLocalEspecifico: Sim
- ZonaRegistro: ZBI
- LocalRegistro: Sala Operacional
- AreaRegistro: 001
- ElevacaoRegistro: Terreo
- ComplementoLocal: Complemento ficticio para teste.
- Prioridade: Media
- StatusPendencia: Aberta
- DataAbertura: 08/06/2026 09:00

### 4.6 Ocorrencias

Cadastrar 1 ocorrencia ficticia:

- Titulo: Ocorrencia ficticia de alarme
- Plantao: PL-2026-06-08-DIA-BI
- NumeroOcorrencia: OCO-TESTE-001
- DataHoraOcorrencia: 08/06/2026 10:00
- TipoOcorrencia: Alarme
- PostoServico: Angra 3
- LocalOperacional: Angra 3 | Z3 | 1UBD | Area 0239 | Elev. +5,15
- ZonaRegistro: Z3
- LocalRegistro: 1UBD
- AreaRegistro: 0239
- ElevacaoRegistro: +5,15
- ComplementoLocal: Ocorrencia ficticia para validacao de campos.
- Gravidade: Informativa
- Descricao: Registro ficticio de alarme para validacao do cadastro de ocorrencias.
- AcoesTomadas: Equipe ficticia realizou verificacao simulada.
- Envolvidos: Equipe de teste.
- StatusOcorrencia: Concluida
- GeraPendencia: Sim
- PendenciaGerada: PEN-TESTE-001, se disponivel
- LiderResponsavelNoMomento: Lider Teste 01, se o campo Pessoa localizar usuario
- RegistradoPor: Lider Teste 01, se o campo Pessoa localizar usuario
- DataRegistro: 08/06/2026 10:30
- RegistroPosteriorPorTerceiro: Nao
- MotivoRegistroPosterior: Nao se aplica
- InformadoPor: Lider Teste 01
- ResponsavelAcompanhamentoOcorrencia: Lider Teste 01, se aplicavel

## 5. O que validar

- Campos obrigatorios impedem salvamento vazio.
- Campos de escolha exibem os valores corretos.
- Campos Pessoa localizam usuarios institucionais.
- PlantaoOrigem pesquisa a lista Plantoes.
- Plantao pesquisa a lista Plantoes.
- LocalOperacional pesquisa a lista LocaisOperacionais.
- PendenciaGerada pesquisa a lista PendenciasOperacionais.
- Campos de snapshot textual aceitam os valores digitados.
- Itens aparecem nas exibicoes padrao.

## 6. Resultado esperado

A validacao sera considerada aprovada se for possivel cadastrar:

- 3 usuarios ficticios;
- 2 locais operacionais ficticios;
- 1 plantao ficticio;
- 2 integrantes no plantao;
- 1 pendencia vinculada ao plantao e local;
- 1 ocorrencia vinculada ao plantao, local e pendencia.

## 7. Proxima etapa apos validacao

Se a validacao passar:

- registrar resultado no GitHub;
- preparar ajustes de exibicoes/visoes das listas;
- preparar estrutura inicial do Power Apps.
