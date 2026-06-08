# Estrutura de Dados — Microsoft Lists / SharePoint

Projeto: Livro de Ocorrências Digital da Brigada de Incêndio  
Versão: 0.2  
Status: Em modelagem  
Base: MVP visual aprovado no Google Stitch

---

## 1. Objetivo

Este documento define a estrutura inicial das listas do Microsoft Lists / SharePoint que servirão como base de dados para o aplicativo Livro de Ocorrências Digital da Brigada de Incêndio.

A estrutura foi pensada para futura implementação em Power Apps, mantendo separação clara entre:

- Plantões
- Equipe
- Conferências
- Inspeções
- Ocorrências
- Pendências
- POTs
- Ciência da equipe
- Administração
- Auditoria

---

## 2. Convenções gerais

### 2.1 Nomenclatura das listas

Usar nomes sem acento, sem espaço e no plural ou composto claro:

- Usuarios
- Plantoes
- EquipePlantao
- ViaturasMateriais
- ConferenciasViaturasMateriais
- InspecoesRotina
- Ocorrencias
- PendenciasOperacionais
- POTs
- CienciaPOT
- ParametrosSistema
- Auditoria

### 2.2 Campos padrão recomendados

Sempre que possível, manter os campos automáticos do SharePoint:

- ID
- Created
- Created By
- Modified
- Modified By

Além disso, usar campos próprios quando necessário:

- Ativo
- Observacoes
- RegistradoPor
- DataRegistro
- Status

### 2.3 Tipos de campos

Tipos sugeridos:

| Tipo | Uso |
|---|---|
| Texto uma linha | Códigos, nomes, títulos curtos |
| Texto várias linhas | Descrições, observações, registros narrativos |
| Escolha | Status, tipo, categoria, prioridade |
| Pessoa | Usuários internos da organização |
| Data e hora | Registros temporais |
| Sim/Não | Controles simples |
| Número | Ordem, quantidade, sequência |
| Hiperlink | Link para documentos |
| Pesquisa | Relacionamento entre listas |

---

## 3. Lista Usuarios

### 3.1 Finalidade

Controlar os usuários autorizados e seus perfis de acesso no aplicativo.

### 3.2 Campos

| Campo | Tipo | Obrigatório | Observação |
|---|---|---:|---|
| Title | Texto uma linha | Sim | Nome completo do usuário |
| Email | Texto uma linha | Sim | Email institucional |
| UsuarioMicrosoft | Pessoa | Não | Conta Microsoft vinculada |
| Matricula | Texto uma linha | Não | Matrícula ou identificação interna |
| Funcao | Escolha | Sim | Brigadista, Líder, Supervisor, Administrador, Apoio |
| PerfilAcesso | Escolha | Sim | Leitura, Operador, Lider, Supervisor, Administrador |
| UnidadePadrao | Escolha | Não | Unidade padrão do usuário |
| Ativo | Sim/Não | Sim | Controla se o usuário pode acessar |
| Observacoes | Texto várias linhas | Não | Observações administrativas |

### 3.3 Regras

- Apenas usuários ativos devem acessar o app.
- O campo Email deve ser único do ponto de vista operacional.
- PerfilAcesso controla permissões nas telas.
- Administrador pode editar cadastros.
- Supervisor pode consultar e reabrir registros conforme regra definida.

---

## 4. Lista Plantoes

### 4.1 Finalidade

Registrar o cabeçalho principal de cada livro de plantão.

### 4.2 Campos

| Campo | Tipo | Obrigatório | Observação |
|---|---|---:|---|
| Title | Texto uma linha | Sim | Código ou identificação do plantão |
| CodigoPlantao | Texto uma linha | Sim | Código único do plantão |
| DataPlantao | Data | Sim | Data do plantão |
| Turno | Escolha | Sim | Dia, Noite, Administrativo, Extra |
| Unidade | Escolha | Sim | Unidade do plantão |
| LiderPlantao | Pessoa | Sim | Responsável pelo plantão |
| StatusLivro | Escolha | Sim | Em preenchimento, Finalizado, Reaberto, Cancelado |
| PassagemServico | Texto várias linhas | Não | Registro da passagem de serviço |
| ResumoOperacional | Texto várias linhas | Não | Resumo geral do plantão |
| DataAbertura | Data e hora | Sim | Data/hora de abertura |
| DataFinalizacao | Data e hora | Não | Data/hora de finalização |
| FinalizadoPor | Pessoa | Não | Usuário que finalizou |
| JustificativaReabertura | Texto várias linhas | Não | Obrigatória em caso de reabertura |
| Observacoes | Texto várias linhas | Não | Observações complementares |

### 4.3 Regras

- Um plantão começa com StatusLivro = Em preenchimento.
- Livro finalizado não deve ser editado por Operador.
- Reabertura deve ser restrita a Supervisor ou Administrador.
- Reabertura deve registrar justificativa.
- Finalização deve registrar usuário, data e hora.

---

## 5. Lista EquipePlantao

### 5.1 Finalidade

Registrar os integrantes vinculados a cada plantão.

### 5.2 Campos

| Campo | Tipo | Obrigatório | Observação |
|---|---|---:|---|
| Title | Texto uma linha | Sim | Nome ou identificação do registro |
| Plantao | Pesquisa | Sim | Relacionamento com Plantoes |
| Integrante | Pessoa | Não | Usuário interno |
| NomeIntegrante | Texto uma linha | Sim | Nome exibido no registro |
| FuncaoNoPlantao | Escolha | Sim | Líder, Motorista, Brigadista, Apoio, Outro |
| Presenca | Escolha | Sim | Presente, Ausente, Substituído |
| HorarioEntrada | Data e hora | Não | Entrada no plantão |
| HorarioSaida | Data e hora | Não | Saída do plantão |
| Observacoes | Texto várias linhas | Não | Observações |

### 5.3 Regras

- Cada integrante deve estar vinculado a um Plantao.
- A lista permite registrar integrantes não cadastrados como usuário, usando NomeIntegrante.
- Presença deve ser informada para controle operacional.

---

## 6. Lista ViaturasMateriais

### 6.1 Finalidade

Cadastrar os itens que serão conferidos durante o plantão.

### 6.2 Campos

| Campo | Tipo | Obrigatório | Observação |
|---|---|---:|---|
| Title | Texto uma linha | Sim | Nome do item |
| Categoria | Escolha | Sim | Viatura, Material, EPI, Equipamento, Sistema, Outro |
| Unidade | Escolha | Sim | Unidade vinculada |
| CodigoInterno | Texto uma linha | Não | Código patrimonial ou operacional |
| Ativo | Sim/Não | Sim | Controla se aparece nas conferências |
| OrdemExibicao | Número | Não | Ordem visual no app |
| Observacoes | Texto várias linhas | Não | Observações administrativas |

### 6.3 Regras

- Apenas itens ativos devem aparecer nas telas de conferência.
- Itens inativos permanecem no histórico.
- OrdemExibicao ajuda a manter padrão visual na conferência.

---

## 7. Lista ConferenciasViaturasMateriais

### 7.1 Finalidade

Registrar a conferência de viaturas, materiais e equipamentos no plantão.

### 7.2 Campos

| Campo | Tipo | Obrigatório | Observação |
|---|---|---:|---|
| Title | Texto uma linha | Sim | Identificação da conferência |
| Plantao | Pesquisa | Sim | Relacionamento com Plantoes |
| Item | Pesquisa | Sim | Relacionamento com ViaturasMateriais |
| StatusConferencia | Escolha | Sim | Normal, Com observação, Fora de operação, Não verificado |
| Condicao | Escolha | Sim | Operacional, Restrição, Indisponível |
| Observacao | Texto várias linhas | Não | Detalhe da condição encontrada |
| RequerPendencia | Sim/Não | Sim | Indica necessidade de gerar pendência |
| PendenciaGerada | Pesquisa | Não | Relacionamento com PendenciasOperacionais |
| RegistradoPor | Pessoa | Sim | Usuário responsável |
| DataRegistro | Data e hora | Sim | Data/hora do registro |

### 7.3 Regras

- Conferência deve estar vinculada a um plantão.
- Item fora de operação deve exigir observação.
- Quando RequerPendencia = Sim, deve permitir criar pendência relacionada.
- Não verificado deve exigir justificativa no campo Observacao.

---

## 8. Lista InspecoesRotina

### 8.1 Finalidade

Registrar inspeções de rotina ou verificações operacionais realizadas no plantão.

### 8.2 Campos

| Campo | Tipo | Obrigatório | Observação |
|---|---|---:|---|
| Title | Texto uma linha | Sim | Identificação da inspeção |
| Plantao | Pesquisa | Sim | Relacionamento com Plantoes |
| AreaInspecionada | Texto uma linha | Sim | Local ou área inspecionada |
| TipoInspecao | Escolha | Sim | Rotina, Preventiva, Verificação, Extraordinária |
| StatusInspecao | Escolha | Sim | Normal, Atenção, Crítica, Não verificado |
| Descricao | Texto várias linhas | Sim | Registro técnico |
| AcaoNecessaria | Texto várias linhas | Não | Providência indicada |
| GeraPendencia | Sim/Não | Sim | Indica se precisa gerar pendência |
| PendenciaGerada | Pesquisa | Não | Relacionamento com PendenciasOperacionais |
| RegistradoPor | Pessoa | Sim | Responsável |
| DataRegistro | Data e hora | Sim | Data/hora do registro |

### 8.3 Regras

- Status Crítica deve exigir AcaoNecessaria.
- GeraPendencia = Sim deve permitir vínculo com PendenciasOperacionais.
- Inspeção deve sempre estar vinculada a um Plantao.

---

## 9. Lista Ocorrencias

### 9.1 Finalidade

Registrar ocorrências operacionais durante o plantão.

### 9.2 Campos

| Campo | Tipo | Obrigatório | Observação |
|---|---|---:|---|
| Title | Texto uma linha | Sim | Título resumido da ocorrência |
| Plantao | Pesquisa | Sim | Relacionamento com Plantoes |
| NumeroOcorrencia | Texto uma linha | Sim | Código único da ocorrência |
| DataHoraOcorrencia | Data e hora | Sim | Momento do fato |
| TipoOcorrencia | Escolha | Sim | Incêndio, Alarme, Apoio, Inspeção, Anormalidade, Outro |
| Local | Texto uma linha | Sim | Local da ocorrência |
| Unidade | Escolha | Sim | Unidade envolvida |
| Gravidade | Escolha | Sim | Informativa, Atenção, Crítica |
| Descricao | Texto várias linhas | Sim | Descrição objetiva |
| AcoesTomadas | Texto várias linhas | Não | Providências executadas |
| Envolvidos | Texto várias linhas | Não | Pessoas ou setores envolvidos |
| StatusOcorrencia | Escolha | Sim | Aberta, Em andamento, Concluída, Cancelada |
| GeraPendencia | Sim/Não | Sim | Indica desdobramento |
| PendenciaGerada | Pesquisa | Não | Relacionamento com PendenciasOperacionais |
| RegistradoPor | Pessoa | Sim | Usuário responsável |
| DataRegistro | Data e hora | Sim | Data/hora do registro |

### 9.3 Regras

- Ocorrência deve estar vinculada a um Plantao.
- Gravidade Crítica deve exigir AcoesTomadas ou justificativa.
- Status Concluída deve exigir registro de AcoesTomadas.
- GeraPendencia = Sim deve permitir criar pendência vinculada.

---

## 10. Lista PendenciasOperacionais

### 10.1 Finalidade

Controlar pendências abertas entre plantões.

### 10.2 Campos

| Campo | Tipo | Obrigatório | Observação |
|---|---|---:|---|
| Title | Texto uma linha | Sim | Título da pendência |
| NumeroPendencia | Texto uma linha | Sim | Código único da pendência |
| PlantaoOrigem | Pesquisa | Sim | Plantão onde foi criada |
| OrigemPendencia | Escolha | Sim | Ocorrência, Inspeção, Conferência, Passagem de serviço, Manual |
| Titulo | Texto uma linha | Sim | Resumo da pendência |
| Descricao | Texto várias linhas | Sim | Detalhamento |
| Unidade | Escolha | Sim | Unidade relacionada |
| Area | Texto uma linha | Não | Local ou área |
| Prioridade | Escolha | Sim | Baixa, Média, Alta, Crítica |
| StatusPendencia | Escolha | Sim | Aberta, Em acompanhamento, Aguardando manutenção, Concluída, Cancelada |
| ResponsavelAcompanhamento | Pessoa | Não | Quem acompanha |
| Prazo | Data | Não | Prazo estimado |
| DataAbertura | Data e hora | Sim | Data/hora de criação |
| DataConclusao | Data e hora | Não | Data/hora de conclusão |
| Conclusao | Texto várias linhas | Não | Registro de fechamento |
| ConcluidoPor | Pessoa | Não | Usuário que concluiu |
| Observacoes | Texto várias linhas | Não | Observações complementares |

### 10.3 Regras

- Pendência aberta deve aparecer no próximo plantão.
- Pendência concluída deve exigir Conclusao, ConcluidoPor e DataConclusao.
- Prioridade Crítica deve aparecer em destaque no Dashboard.
- Pendência cancelada deve exigir justificativa no campo Conclusao ou Observacoes.

---

## 11. Lista POTs

### 11.1 Finalidade

Cadastrar POTs revisados que exigem ciência da equipe.

### 11.2 Campos

| Campo | Tipo | Obrigatório | Observação |
|---|---|---:|---|
| Title | Texto uma linha | Sim | Título do POT |
| CodigoPOT | Texto uma linha | Sim | Código do procedimento |
| TituloPOT | Texto uma linha | Sim | Nome do POT |
| Versao | Texto uma linha | Sim | Versão ou revisão |
| DataRevisao | Data | Sim | Data da revisão |
| StatusPOT | Escolha | Sim | Ativo, Substituído, Cancelado |
| LinkDocumento | Hiperlink | Não | Link para documento no SharePoint |
| RequerCiencia | Sim/Não | Sim | Indica necessidade de ciência |
| Observacoes | Texto várias linhas | Não | Observações administrativas |

### 11.3 Regras

- Apenas POT ativo e com RequerCiencia = Sim deve gerar pendência de ciência.
- POT substituído deve permanecer no histórico.
- LinkDocumento deve apontar para local oficial no SharePoint quando disponível.

---

## 12. Lista CienciaPOT

### 12.1 Finalidade

Registrar ciência dos usuários em POTs revisados.

### 12.2 Campos

| Campo | Tipo | Obrigatório | Observação |
|---|---|---:|---|
| Title | Texto uma linha | Sim | Identificação do registro |
| POT | Pesquisa | Sim | Relacionamento com POTs |
| Usuario | Pessoa | Sim | Usuário que deve dar ciência |
| StatusCiencia | Escolha | Sim | Pendente, Ciente |
| DataCiencia | Data e hora | Não | Data/hora da ciência |
| Observacao | Texto várias linhas | Não | Observação complementar |

### 12.3 Regras

- Status inicial deve ser Pendente.
- Ao registrar ciência, preencher StatusCiencia = Ciente e DataCiencia.
- Não permitir múltiplos registros ativos iguais para o mesmo usuário e POT.
- Cancelamento ou ajuste deve ser auditado.

---

## 13. Lista ParametrosSistema

### 13.1 Finalidade

Guardar parâmetros administrativos simples para configuração do app.

### 13.2 Campos

| Campo | Tipo | Obrigatório | Observação |
|---|---|---:|---|
| Title | Texto uma linha | Sim | Nome do parâmetro |
| Chave | Texto uma linha | Sim | Identificador interno |
| Valor | Texto uma linha | Sim | Valor configurado |
| Categoria | Escolha | Sim | Geral, Permissão, Relatório, Integração |
| Ativo | Sim/Não | Sim | Controla se está em uso |
| Observacoes | Texto várias linhas | Não | Detalhes |

### 13.3 Regras

- Parâmetros críticos devem ser alterados apenas por Administrador.
- Alterações devem ser registradas na Auditoria quando possível.

---

## 14. Lista Auditoria

### 14.1 Finalidade

Registrar ações importantes realizadas no aplicativo.

### 14.2 Campos

| Campo | Tipo | Obrigatório | Observação |
|---|---|---:|---|
| Title | Texto uma linha | Sim | Resumo da ação |
| Usuario | Pessoa | Sim | Usuário que executou |
| Acao | Texto uma linha | Sim | Ação realizada |
| Entidade | Texto uma linha | Sim | Lista ou módulo afetado |
| RegistroRelacionado | Texto uma linha | Não | ID, código ou referência |
| DataHora | Data e hora | Sim | Momento da ação |
| Detalhes | Texto várias linhas | Não | Informações adicionais |

### 14.3 Regras

Devem gerar auditoria:

- Finalização de livro
- Reabertura de livro
- Criação de pendência crítica
- Conclusão de pendência
- Cancelamento de pendência
- Alteração de permissões
- Alteração de parâmetros
- Exclusões administrativas

---

## 15. Relacionamentos principais

| Lista origem | Campo | Lista destino |
|---|---|---|
| EquipePlantao | Plantao | Plantoes |
| ConferenciasViaturasMateriais | Plantao | Plantoes |
| ConferenciasViaturasMateriais | Item | ViaturasMateriais |
| InspecoesRotina | Plantao | Plantoes |
| Ocorrencias | Plantao | Plantoes |
| PendenciasOperacionais | PlantaoOrigem | Plantoes |
| CienciaPOT | POT | POTs |

---

## 16. Visões iniciais recomendadas

### Plantoes

- Plantões em preenchimento
- Plantões finalizados
- Plantões por data
- Plantões por unidade

### Ocorrencias

- Ocorrências do plantão atual
- Ocorrências abertas
- Ocorrências críticas
- Ocorrências por período

### PendenciasOperacionais

- Pendências abertas
- Pendências críticas
- Pendências aguardando manutenção
- Pendências concluídas
- Pendências por unidade

### POTs

- POTs ativos
- POTs que exigem ciência
- POTs substituídos

### CienciaPOT

- Ciências pendentes
- Ciências concluídas
- Pendências por usuário

---

## 17. Índices recomendados

Campos candidatos a índice:

### Plantoes

- DataPlantao
- StatusLivro
- Unidade
- Turno

### Ocorrencias

- Plantao
- DataHoraOcorrencia
- StatusOcorrencia
- Gravidade
- Unidade

### PendenciasOperacionais

- StatusPendencia
- Prioridade
- Unidade
- Prazo
- PlantaoOrigem

### CienciaPOT

- Usuario
- StatusCiencia
- POT

---

## 18. Pendências de decisão

Antes de criar as listas no SharePoint, ainda precisamos decidir:

- Lista de unidades oficiais.
- Lista de turnos oficiais.
- Lista oficial de tipos de ocorrência.
- Lista oficial de funções no plantão.
- Se usuários serão cadastrados manualmente ou puxados direto da conta Microsoft.
- Se o app terá uso apenas interno ou também por terceiros autorizados.
- Se as pendências terão prazo obrigatório.
- Se a conclusão de pendência exigirá anexo.
- Se o relatório final do plantão será gerado em PDF, Word ou apenas visualização no app.

---

## 19. Status da modelagem

Esta estrutura ainda está em validação.

Próxima etapa:

- revisar listas;
- confirmar campos obrigatórios;
- confirmar escolhas de status;
- revisar permissões;
- só depois criar as listas no SharePoint.
