# Fase 1 — Listas Essenciais do SharePoint

Projeto: Livro de Ocorrências Digital da Brigada de Incêndio  
Versão: 0.1  
Status: Preparação para criação futura  
Data: 07/06/2026

---

## 1. Objetivo

Este documento detalha a Fase 1 de criação das listas essenciais no Microsoft Lists / SharePoint.

A Fase 1 deve permitir testar o fluxo principal do aplicativo:

1. Usuário acessa o app.
2. Usuário abre ou consulta um plantão.
3. Usuário registra equipe do plantão.
4. Usuário registra ocorrências.
5. Usuário cria e acompanha pendências operacionais.

Ainda não criar as listas no SharePoint sem validação final deste documento.

---

## 2. Listas da Fase 1

A Fase 1 será composta por 5 listas:

1. Usuarios
2. Plantoes
3. EquipePlantao
4. Ocorrencias
5. PendenciasOperacionais

---

## 3. Ordem recomendada de criação

A ordem recomendada é:

1. Usuarios
2. Plantoes
3. EquipePlantao
4. PendenciasOperacionais
5. Ocorrencias

Justificativa:

- Usuarios deve existir primeiro porque será usado em permissões e campos de pessoa.
- Plantoes deve existir antes de EquipePlantao, Ocorrencias e PendenciasOperacionais.
- EquipePlantao depende de Plantoes.
- Ocorrencias depende de Plantoes e pode gerar PendenciasOperacionais.
- PendenciasOperacionais depende de Plantoes e pode ser vinculada a ocorrências, inspeções ou conferências.

---

## 4. Lista Usuarios

### 4.1 Finalidade

Controlar os usuários autorizados, perfis de acesso e vínculo operacional.

### 4.2 Campos essenciais

| Campo | Tipo | Obrigatório | Observação |
|---|---|---:|---|
| Title | Texto uma linha | Sim | Nome completo do usuário |
| Email | Texto uma linha | Sim | Email institucional |
| UsuarioMicrosoft | Pessoa | Não | Conta Microsoft vinculada |
| Matricula | Texto uma linha | Não | Identificação interna |
| Funcao | Escolha | Sim | Líder, Motorista, Brigadista, Apoio, Supervisor, Administrador, Outro |
| PerfilAcesso | Escolha | Sim | Leitura, Operador, Lider, Supervisor, Administrador |
| UnidadePadrao | Escolha | Não | Unidade padrão |
| Ativo | Sim/Não | Sim | Controla acesso lógico |
| Observacoes | Texto várias linhas | Não | Observações administrativas |

### 4.3 Valores padrão sugeridos

| Campo | Valor padrão |
|---|---|
| Ativo | Sim |
| PerfilAcesso | Leitura |

### 4.4 Regras

- Apenas usuários ativos devem acessar o aplicativo.
- PerfilAcesso será usado no Power Apps para controlar visualização e ações.
- O texto exibido ao usuário deve usar "Líder", mesmo que o valor interno seja "Lider".
- Email deve ser tratado como referência operacional única.

---

## 5. Lista Plantoes

### 5.1 Finalidade

Registrar o cabeçalho principal de cada livro de plantão.

### 5.2 Campos essenciais

| Campo | Tipo | Obrigatório | Observação |
|---|---|---:|---|
| Title | Texto uma linha | Sim | Código do plantão |
| CodigoPlantao | Texto uma linha | Sim | Código único |
| DataPlantao | Data | Sim | Data do plantão |
| Turno | Escolha | Sim | Dia, Noite, Administrativo, Extra |
| Unidade | Escolha | Sim | Unidade operacional |
| LiderPlantao | Pessoa | Sim | Responsável |
| StatusLivro | Escolha | Sim | Em preenchimento, Finalizado, Reaberto, Cancelado |
| PassagemServico | Texto várias linhas | Não | Registro da passagem de serviço |
| ResumoOperacional | Texto várias linhas | Não | Resumo geral |
| DataAbertura | Data e hora | Sim | Data/hora de abertura |
| DataFinalizacao | Data e hora | Não | Data/hora de finalização |
| FinalizadoPor | Pessoa | Não | Usuário que finalizou |
| JustificativaReabertura | Texto várias linhas | Não | Obrigatória se reaberto |
| Observacoes | Texto várias linhas | Não | Observações complementares |

### 5.3 Valores padrão sugeridos

| Campo | Valor padrão |
|---|---|
| StatusLivro | Em preenchimento |
| DataAbertura | Agora |
| Unidade | Unidade Central |
| Turno | Dia |

### 5.4 Regras

- Só deve existir um livro em preenchimento por unidade, data e turno.
- Livro finalizado não deve permitir edição por Operador.
- Reabertura deve ser restrita a Supervisor ou Administrador.
- Finalização deve registrar DataFinalizacao e FinalizadoPor.
- Reabertura deve exigir JustificativaReabertura.

---

## 6. Lista EquipePlantao

### 6.1 Finalidade

Registrar os integrantes de cada plantão.

### 6.2 Campos essenciais

| Campo | Tipo | Obrigatório | Observação |
|---|---|---:|---|
| Title | Texto uma linha | Sim | Nome ou identificação do registro |
| Plantao | Pesquisa | Sim | Relacionamento com Plantoes |
| Integrante | Pessoa | Não | Conta Microsoft vinculada |
| NomeIntegrante | Texto uma linha | Sim | Nome exibido no registro |
| FuncaoNoPlantao | Escolha | Sim | Líder, Motorista, Brigadista, Apoio, Outro |
| Presenca | Escolha | Sim | Presente, Ausente, Substituído |
| HorarioEntrada | Data e hora | Não | Entrada |
| HorarioSaida | Data e hora | Não | Saída |
| Observacoes | Texto várias linhas | Não | Observações |

### 6.3 Valores padrão sugeridos

| Campo | Valor padrão |
|---|---|
| Presenca | Presente |

### 6.4 Regras

- Todo integrante deve estar vinculado a um Plantao.
- NomeIntegrante deve existir mesmo quando Integrante/Pessoa estiver vazio.
- Um plantão deve ter pelo menos um Líder.
- Presença deve ser registrada para fins de histórico.

---

## 7. Lista Ocorrencias

### 7.1 Finalidade

Registrar ocorrências do plantão.

### 7.2 Campos essenciais

| Campo | Tipo | Obrigatório | Observação |
|---|---|---:|---|
| Title | Texto uma linha | Sim | Título resumido da ocorrência |
| Plantao | Pesquisa | Sim | Relacionamento com Plantoes |
| NumeroOcorrencia | Texto uma linha | Sim | Código único |
| DataHoraOcorrencia | Data e hora | Sim | Momento do fato |
| TipoOcorrencia | Escolha | Sim | Incêndio, Alarme, Apoio, Inspeção, Anormalidade, Emergência Médica, Vazamento, Treinamento ou Simulado, Outro |
| Local | Texto uma linha | Sim | Local da ocorrência |
| Unidade | Escolha | Sim | Unidade envolvida |
| Gravidade | Escolha | Sim | Informativa, Atenção, Crítica |
| Descricao | Texto várias linhas | Sim | Descrição objetiva |
| AcoesTomadas | Texto várias linhas | Não | Providências executadas |
| Envolvidos | Texto várias linhas | Não | Pessoas ou setores envolvidos |
| StatusOcorrencia | Escolha | Sim | Aberta, Em andamento, Concluída, Cancelada |
| GeraPendencia | Sim/Não | Sim | Indica se gera pendência |
| PendenciaGerada | Pesquisa | Não | Relacionamento com PendenciasOperacionais |
| RegistradoPor | Pessoa | Sim | Usuário responsável |
| DataRegistro | Data e hora | Sim | Data/hora do registro |

### 7.3 Valores padrão sugeridos

| Campo | Valor padrão |
|---|---|
| StatusOcorrencia | Aberta |
| Gravidade | Informativa |
| GeraPendencia | Não |
| DataRegistro | Agora |

### 7.4 Regras

- Toda ocorrência deve estar vinculada a um Plantao.
- Ocorrência Crítica deve aparecer em destaque no Dashboard.
- Ocorrência Concluída deve exigir AcoesTomadas.
- Ocorrência Cancelada deve exigir justificativa.
- Se GeraPendencia = Sim, deve ser possível criar vínculo com PendenciasOperacionais.

---

## 8. Lista PendenciasOperacionais

### 8.1 Finalidade

Controlar pendências abertas entre plantões.

### 8.2 Campos essenciais

| Campo | Tipo | Obrigatório | Observação |
|---|---|---:|---|
| Title | Texto uma linha | Sim | Título da pendência |
| NumeroPendencia | Texto uma linha | Sim | Código único |
| PlantaoOrigem | Pesquisa | Sim | Plantão onde foi criada |
| OrigemPendencia | Escolha | Sim | Ocorrência, Inspeção, Conferência, Passagem de serviço, Manual |
| Titulo | Texto uma linha | Sim | Resumo da pendência |
| Descricao | Texto várias linhas | Sim | Detalhamento |
| Unidade | Escolha | Sim | Unidade relacionada |
| Area | Texto uma linha | Não | Local ou área |
| Prioridade | Escolha | Sim | Baixa, Média, Alta, Crítica |
| StatusPendencia | Escolha | Sim | Aberta, Em acompanhamento, Aguardando manutenção, Concluída, Cancelada |
| ResponsavelAcompanhamento | Pessoa | Não | Responsável |
| Prazo | Data | Não | Prazo estimado |
| DataAbertura | Data e hora | Sim | Data/hora de criação |
| DataConclusao | Data e hora | Não | Data/hora de conclusão |
| Conclusao | Texto várias linhas | Não | Registro de fechamento |
| ConcluidoPor | Pessoa | Não | Usuário que concluiu |
| Observacoes | Texto várias linhas | Não | Observações complementares |

### 8.3 Valores padrão sugeridos

| Campo | Valor padrão |
|---|---|
| StatusPendencia | Aberta |
| Prioridade | Média |
| DataAbertura | Agora |

### 8.4 Regras

- Pendência Aberta deve aparecer no Dashboard e no próximo plantão.
- Pendência Crítica deve ter destaque visual.
- Pendência Concluída deve exigir Conclusao, ConcluidoPor e DataConclusao.
- Pendência Cancelada deve exigir justificativa.
- Pendências não devem ser apagadas em uso normal.

---

## 9. Critérios de aceite da Fase 1

A Fase 1 estará pronta para criação no SharePoint quando:

- As 5 listas essenciais estiverem validadas.
- Os campos obrigatórios estiverem confirmados.
- Os valores de escolha estiverem aceitos.
- A ordem de criação estiver definida.
- Os relacionamentos estiverem claros.
- As regras mínimas estiverem documentadas.
- O fluxo principal puder ser testado com dados fictícios.

---

## 10. Dados fictícios para primeiro teste

Dados base do protótipo:

| Campo | Valor |
|---|---|
| Data do plantão | 06/06/2026 |
| Turno | Dia |
| Unidade | Unidade Central |
| Líder | Sgt. Oliveira |
| Status do livro | Em preenchimento |

Registros mínimos para teste:

- 1 usuário administrador.
- 1 usuário líder.
- 1 plantão aberto.
- 3 integrantes no plantão.
- 1 ocorrência informativa.
- 1 ocorrência crítica.
- 1 pendência aberta.
- 1 pendência crítica.

---

## 11. Decisão desta etapa

A Fase 1 fica preparada para validação operacional.

Ainda não criar listas reais no SharePoint antes de confirmar:

- unidades oficiais;
- turnos oficiais;
- perfis de acesso;
- tipos de ocorrência;
- prioridades;
- status;
- se "Unidade Central" será mantida como unidade real ou apenas como dado fictício.
