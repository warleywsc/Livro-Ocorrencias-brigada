# Exibicoes Recomendadas das Listas SharePoint

Projeto: Livro de Ocorrencias Digital da Brigada de Incendio
Data: 09/06/2026
Status: Planejamento inicial

## 1. Objetivo

Organizar exibicoes uteis nas listas SharePoint antes da fase inicial do Power Apps.

Essas exibicoes servem para conferencia, manutencao e administracao dos dados.

## 2. Usuarios

Exibicao recomendada: Usuarios ativos

Colunas:

- Titulo
- Email
- Funcao
- PerfilAcesso
- PostoServico
- Ativo

Filtro:

- Ativo igual a Sim

## 3. Plantoes

Exibicao recomendada: Plantoes em preenchimento

Colunas:

- Titulo
- CodigoPlantao
- DataPlantao
- Turno
- PlantaoExtra
- PostoServico
- StatusLivro
- LiderEscalado
- LiderResponsavelAtual
- HouveSubstituicaoLider
- DataAbertura

Filtro:

- StatusLivro igual a Em preenchimento

## 4. EquipePlantao

Exibicao recomendada: Equipe por plantao

Colunas:

- Titulo
- Plantao
- NomeIntegrante
- FuncaoNoPlantao
- PostoServico
- Presenca
- TipoVinculoPlantao
- MotivoSubstituicao
- SubstituiQuem
- HorarioInicioAtuacao
- HorarioFimAtuacao
- AtuacaoExtra

## 5. LocaisOperacionais

Exibicao recomendada: Locais ativos

Colunas:

- Titulo
- CodigoLocalOperacional
- PostoServico
- Zona
- Local
- Area
- Elevacao
- LocalArea
- StatusCadastro
- FonteCadastro
- Ativo

Filtro:

- Ativo igual a Sim

## 6. PendenciasOperacionais

Exibicao recomendada: Pendencias abertas

Colunas:

- Titulo
- NumeroPendencia
- PlantaoOrigem
- OrigemPendencia
- PostoServico
- LocalOperacional
- Prioridade
- StatusPendencia
- ResponsavelAcompanhamento
- Prazo
- DataAbertura

Filtro:

- StatusPendencia diferente de Concluida
- StatusPendencia diferente de Cancelada

## 7. Ocorrencias

Exibicao recomendada: Ocorrencias do plantao

Colunas:

- Titulo
- Plantao
- NumeroOcorrencia
- DataHoraOcorrencia
- TipoOcorrencia
- PostoServico
- LocalOperacional
- Gravidade
- StatusOcorrencia
- GeraPendencia
- PendenciaGerada
- LiderResponsavelNoMomento
- RegistradoPor
- DataRegistro

## 8. Proxima etapa

Criar ou ajustar exibicoes manualmente no SharePoint conforme necessidade operacional.

Depois iniciar a estrutura inicial do Power Apps.
