# Roteiro de Criação Manual — Fase 1

Projeto: Livro de Ocorrências Digital da Brigada de Incêndio  
Etapa: Microsoft Lists / SharePoint  
Fase: 1 — Listas essenciais  
Status: Roteiro preparado para execução futura  
Data: 07/06/2026

---

## 1. Objetivo

Este documento orienta a criação manual das listas essenciais da Fase 1 no Microsoft Lists / SharePoint.

A criação real das listas só deve ser feita após validação operacional dos campos e valores de escolha.

---

## 2. Listas da Fase 1

Criar nesta ordem:

1. Usuarios
2. Plantoes
3. EquipePlantao
4. PendenciasOperacionais
5. Ocorrencias

---

## 3. Antes de criar as listas

Confirmar:

- O site SharePoint correto.
- Se o app será criado em ambiente institucional.
- Quem será administrador inicial.
- Se os usuários serão cadastrados manualmente.
- Se Unidade Central será mantida como unidade real.
- Se Angra 1, Angra 2 e Angra 3 entram como unidades oficiais.
- Se os valores de escolha estão aprovados.

---

## 4. Lista Usuarios

### Nome da lista

Usuarios

### Finalidade

Controlar usuários autorizados, função e perfil de acesso.

### Campos

| Campo | Tipo | Obrigatório |
|---|---|---:|
| Title | Texto uma linha | Sim |
| Email | Texto uma linha | Sim |
| UsuarioMicrosoft | Pessoa | Não |
| Matricula | Texto uma linha | Não |
| Funcao | Escolha | Sim |
| PerfilAcesso | Escolha | Sim |
| PostoServico | Escolha | Não |
| Ativo | Sim/Não | Sim |
| Observacoes | Texto várias linhas | Não |

### Valores de escolha — Funcao

- Líder
- Motorista
- Brigadista
- Apoio
- Supervisor
- Administrador
- Outro

### Valores de escolha — PerfilAcesso

- Leitura
- Operador
- Lider
- Supervisor
- Administrador

### Valores de escolha — PostoServico

- Unidade Central
- Angra 1
- Angra 2
- Angra 3
- Apoio Externo
- Outro

### Valores padrão

| Campo | Valor |
|---|---|
| Ativo | Sim |
| PerfilAcesso | Leitura |

---

## 5. Lista Plantoes

### Nome da lista

Plantoes

### Finalidade

Registrar o cabeçalho principal do livro de plantão.

### Campos

| Campo | Tipo | Obrigatório |
|---|---|---:|
| Title | Texto uma linha | Sim |
| CodigoPlantao | Texto uma linha | Sim |
| DataPlantao | Data | Sim |
| Turno | Escolha | Sim |
| Unidade | Escolha | Sim |
| LiderPlantao | Pessoa | Sim |
| StatusLivro | Escolha | Sim |
| PassagemServico | Texto várias linhas | Não |
| ResumoOperacional | Texto várias linhas | Não |
| DataAbertura | Data e hora | Sim |
| DataFinalizacao | Data e hora | Não |
| FinalizadoPor | Pessoa | Não |
| JustificativaReabertura | Texto várias linhas | Não |
| Observacoes | Texto várias linhas | Não |

### Valores de escolha — Turno

- Dia
- Noite
- Administrativo
- Extra

### Valores de escolha — Unidade

- Unidade Central
- Angra 1
- Angra 2
- Angra 3
- Apoio Externo
- Outro

### Valores de escolha — StatusLivro

- Em preenchimento
- Finalizado
- Reaberto
- Cancelado

### Valores padrão

| Campo | Valor |
|---|---|
| StatusLivro | Em preenchimento |
| Unidade | Unidade Central |
| Turno | Dia |

---

## 6. Lista EquipePlantao

### Nome da lista

EquipePlantao

### Finalidade

Registrar os integrantes vinculados a cada plantão.

### Campos

| Campo | Tipo | Obrigatório |
|---|---|---:|
| Title | Texto uma linha | Sim |
| Plantao | Pesquisa | Sim |
| Integrante | Pessoa | Não |
| NomeIntegrante | Texto uma linha | Sim |
| FuncaoNoPlantao | Escolha | Sim |
| Presenca | Escolha | Sim |
| HorarioEntrada | Data e hora | Não |
| HorarioSaida | Data e hora | Não |
| Observacoes | Texto várias linhas | Não |

### Relacionamento

| Campo | Lista relacionada |
|---|---|
| Plantao | Plantoes |

### Valores de escolha — FuncaoNoPlantao

- Líder
- Motorista
- Brigadista
- Apoio
- Outro

### Valores de escolha — Presenca

- Presente
- Ausente
- Substituído

### Valor padrão

| Campo | Valor |
|---|---|
| Presenca | Presente |

---

## 7. Lista PendenciasOperacionais

### Nome da lista

PendenciasOperacionais

### Finalidade

Controlar pendências abertas entre plantões.

### Campos

| Campo | Tipo | Obrigatório |
|---|---|---:|
| Title | Texto uma linha | Sim |
| NumeroPendencia | Texto uma linha | Sim |
| PlantaoOrigem | Pesquisa | Sim |
| OrigemPendencia | Escolha | Sim |
| Titulo | Texto uma linha | Sim |
| Descricao | Texto várias linhas | Sim |
| Unidade | Escolha | Sim |
| Area | Texto uma linha | Não |
| Prioridade | Escolha | Sim |
| StatusPendencia | Escolha | Sim |
| ResponsavelAcompanhamento | Pessoa | Não |
| Prazo | Data | Não |
| DataAbertura | Data e hora | Sim |
| DataConclusao | Data e hora | Não |
| Conclusao | Texto várias linhas | Não |
| ConcluidoPor | Pessoa | Não |
| Observacoes | Texto várias linhas | Não |

### Relacionamento

| Campo | Lista relacionada |
|---|---|
| PlantaoOrigem | Plantoes |

### Valores de escolha — OrigemPendencia

- Ocorrência
- Inspeção
- Conferência
- Passagem de serviço
- Manual

### Valores de escolha — Prioridade

- Baixa
- Média
- Alta
- Crítica

### Valores de escolha — StatusPendencia

- Aberta
- Em acompanhamento
- Aguardando manutenção
- Concluída
- Cancelada

### Valores padrão

| Campo | Valor |
|---|---|
| StatusPendencia | Aberta |
| Prioridade | Média |

---

## 8. Lista Ocorrencias

### Nome da lista

Ocorrencias

### Finalidade

Registrar ocorrências operacionais do plantão.

### Campos

| Campo | Tipo | Obrigatório |
|---|---|---:|
| Title | Texto uma linha | Sim |
| Plantao | Pesquisa | Sim |
| NumeroOcorrencia | Texto uma linha | Sim |
| DataHoraOcorrencia | Data e hora | Sim |
| TipoOcorrencia | Escolha | Sim |
| Local | Texto uma linha | Sim |
| Unidade | Escolha | Sim |
| Gravidade | Escolha | Sim |
| Descricao | Texto várias linhas | Sim |
| AcoesTomadas | Texto várias linhas | Não |
| Envolvidos | Texto várias linhas | Não |
| StatusOcorrencia | Escolha | Sim |
| GeraPendencia | Sim/Não | Sim |
| PendenciaGerada | Pesquisa | Não |
| RegistradoPor | Pessoa | Sim |
| DataRegistro | Data e hora | Sim |

### Relacionamentos

| Campo | Lista relacionada |
|---|---|
| Plantao | Plantoes |
| PendenciaGerada | PendenciasOperacionais |

### Valores de escolha — TipoOcorrencia

- Incêndio
- Alarme
- Apoio
- Inspeção
- Anormalidade
- Emergência Médica
- Vazamento
- Treinamento ou Simulado
- Outro

### Valores de escolha — Gravidade

- Informativa
- Atenção
- Crítica

### Valores de escolha — StatusOcorrencia

- Aberta
- Em andamento
- Concluída
- Cancelada

### Valores padrão

| Campo | Valor |
|---|---|
| StatusOcorrencia | Aberta |
| Gravidade | Informativa |
| GeraPendencia | Não |

---

## 9. Observação importante sobre campos de Pesquisa

Campos do tipo Pesquisa só devem ser criados depois que a lista relacionada já existir.

Por isso, a ordem de criação é importante:

1. Usuarios
2. Plantoes
3. EquipePlantao
4. PendenciasOperacionais
5. Ocorrencias

---

## 10. Visões iniciais sugeridas

### Usuarios

- Usuários ativos
- Usuários por perfil
- Usuários inativos

### Plantoes

- Plantões em preenchimento
- Plantões finalizados
- Plantões por data
- Plantões por unidade

### EquipePlantao

- Equipe do plantão atual
- Integrantes por plantão
- Ausências e substituições

### PendenciasOperacionais

- Pendências abertas
- Pendências críticas
- Pendências aguardando manutenção
- Pendências concluídas

### Ocorrencias

- Ocorrências do plantão atual
- Ocorrências abertas
- Ocorrências críticas
- Ocorrências por período

---

## 11. Índices recomendados

### Plantoes

- DataPlantao
- Unidade
- Turno
- StatusLivro

### PendenciasOperacionais

- StatusPendencia
- Prioridade
- Unidade
- Prazo
- PlantaoOrigem

### Ocorrencias

- Plantao
- DataHoraOcorrencia
- StatusOcorrencia
- Gravidade
- Unidade

---

## 12. Critério de liberação para criação real

Antes de criar as listas reais, confirmar:

- Nome do site SharePoint.
- Permissão para criar listas.
- Valores oficiais dos campos de escolha.
- Se os campos obrigatórios estão corretos.
- Se os campos de Pessoa funcionarão com contas institucionais.
- Se a criação será manual ou automatizada.
- Se haverá ambiente de teste antes do uso real.

---

## 13. Status

Este roteiro está preparado para validação.

Ainda não executar criação real das listas sem confirmação.

