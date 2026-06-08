# Guia de Execução Manual — Microsoft Lists / SharePoint — Fase 1

Projeto: Livro de Ocorrências Digital da Brigada de Incêndio  
Fase: 1 — Listas essenciais  
Status: Guia operacional preparado  
Data: 07/06/2026

---

## 1. Objetivo

Este guia serve para apoiar a criação manual das listas essenciais no Microsoft Lists / SharePoint.

A ideia é usar este documento como checklist durante a criação real.

---

## 2. Regras antes de começar

Antes de criar qualquer lista:

- Confirmar se está no site SharePoint correto.
- Confirmar se você tem permissão para criar listas.
- Não usar dados reais sensíveis no primeiro teste.
- Usar nomes das listas sem acento e sem espaço.
- Criar as listas exatamente na ordem indicada.
- Não criar Power Apps ainda.
- Não criar Power Automate ainda.
- Não alterar nomes depois de criar sem registrar na documentação.

---

## 3. Ordem de criação

Criar as listas nesta ordem:

1. Usuarios
2. Plantoes
3. EquipePlantao
4. PendenciasOperacionais
5. Ocorrencias

---

## 4. Lista 1 — Usuarios

### 4.1 Criar lista

Nome:

Usuarios

Descrição:

Cadastro de usuários autorizados, funções e perfis de acesso do Livro de Ocorrências Digital da Brigada de Incêndio.

### 4.2 Campos a criar

| Campo | Tipo | Obrigatório | Valores |
|---|---|---:|---|
| Email | Texto uma linha | Sim | Livre |
| UsuarioMicrosoft | Pessoa | Não | Usuários institucionais |
| Matricula | Texto uma linha | Não | Livre |
| Funcao | Escolha | Sim | Líder; Motorista; Brigadista; Apoio; Supervisor; Administrador; Outro |
| PerfilAcesso | Escolha | Sim | Leitura; Operador; Lider; Supervisor; Administrador |
| UnidadePadrao | Escolha | Não | Unidade Central; Angra 1; Angra 2; Angra 3; Apoio Externo; Outro |
| Ativo | Sim/Não | Sim | Sim/Não |
| Observacoes | Texto várias linhas | Não | Livre |

### 4.3 Campo Title

Usar o campo Title como:

Nome completo do usuário

### 4.4 Validação

Após criar a lista, confirmar:

- [ ] Lista Usuarios criada.
- [ ] Campo Title mantido.
- [ ] Campo Email criado.
- [ ] Campo UsuarioMicrosoft criado como Pessoa.
- [ ] Campos Funcao, PerfilAcesso e UnidadePadrao criados como Escolha.
- [ ] Campo Ativo criado como Sim/Não.
- [ ] Campo Observacoes criado como texto várias linhas.

---

## 5. Lista 2 — Plantoes

### 5.1 Criar lista

Nome:

Plantoes

Descrição:

Registro principal dos livros de plantão da Brigada de Incêndio.

### 5.2 Campos a criar

| Campo | Tipo | Obrigatório | Valores |
|---|---|---:|---|
| CodigoPlantao | Texto uma linha | Sim | Livre |
| DataPlantao | Data | Sim | Data |
| Turno | Escolha | Sim | Dia; Noite; Administrativo; Extra |
| Unidade | Escolha | Sim | Unidade Central; Angra 1; Angra 2; Angra 3; Apoio Externo; Outro |
| LiderPlantao | Pessoa | Sim | Usuários institucionais |
| StatusLivro | Escolha | Sim | Em preenchimento; Finalizado; Reaberto; Cancelado |
| PassagemServico | Texto várias linhas | Não | Livre |
| ResumoOperacional | Texto várias linhas | Não | Livre |
| DataAbertura | Data e hora | Sim | Data e hora |
| DataFinalizacao | Data e hora | Não | Data e hora |
| FinalizadoPor | Pessoa | Não | Usuários institucionais |
| JustificativaReabertura | Texto várias linhas | Não | Livre |
| Observacoes | Texto várias linhas | Não | Livre |

### 5.3 Campo Title

Usar o campo Title como:

Código do plantão

Exemplo:

PL-2026-06-06-DIA-UC

### 5.4 Validação

Após criar a lista, confirmar:

- [ ] Lista Plantoes criada.
- [ ] Campos de escolha criados corretamente.
- [ ] Campos de Pessoa criados corretamente.
- [ ] Campos de texto longo criados corretamente.
- [ ] Campos de data e hora criados corretamente.

---

## 6. Lista 3 — EquipePlantao

### 6.1 Criar lista

Nome:

EquipePlantao

Descrição:

Registro dos integrantes vinculados a cada plantão.

### 6.2 Campos a criar

| Campo | Tipo | Obrigatório | Valores |
|---|---|---:|---|
| Plantao | Pesquisa | Sim | Lista Plantoes |
| Integrante | Pessoa | Não | Usuários institucionais |
| NomeIntegrante | Texto uma linha | Sim | Livre |
| FuncaoNoPlantao | Escolha | Sim | Líder; Motorista; Brigadista; Apoio; Outro |
| Presenca | Escolha | Sim | Presente; Ausente; Substituído |
| HorarioEntrada | Data e hora | Não | Data e hora |
| HorarioSaida | Data e hora | Não | Data e hora |
| Observacoes | Texto várias linhas | Não | Livre |

### 6.3 Campo Title

Usar o campo Title como:

Nome do integrante ou identificação curta do vínculo.

Exemplo:

Sgt. Oliveira - Plantão 06/06/2026

### 6.4 Configuração do campo Plantao

- Tipo: Pesquisa
- Lista relacionada: Plantoes
- Campo exibido: Title

### 6.5 Validação

Após criar a lista, confirmar:

- [ ] Lista EquipePlantao criada.
- [ ] Campo Plantao pesquisa a lista Plantoes.
- [ ] Campo Integrante criado como Pessoa.
- [ ] Campo NomeIntegrante criado como texto.
- [ ] Campos de escolha criados corretamente.

---

## 7. Lista 4 — PendenciasOperacionais

### 7.1 Criar lista

Nome:

PendenciasOperacionais

Descrição:

Controle de pendências operacionais abertas, acompanhadas, concluídas ou canceladas entre plantões.

### 7.2 Campos a criar

| Campo | Tipo | Obrigatório | Valores |
|---|---|---:|---|
| NumeroPendencia | Texto uma linha | Sim | Livre |
| PlantaoOrigem | Pesquisa | Sim | Lista Plantoes |
| OrigemPendencia | Escolha | Sim | Ocorrência; Inspeção; Conferência; Passagem de serviço; Manual |
| Titulo | Texto uma linha | Sim | Livre |
| Descricao | Texto várias linhas | Sim | Livre |
| Unidade | Escolha | Sim | Unidade Central; Angra 1; Angra 2; Angra 3; Apoio Externo; Outro |
| Area | Texto uma linha | Não | Livre |
| Prioridade | Escolha | Sim | Baixa; Média; Alta; Crítica |
| StatusPendencia | Escolha | Sim | Aberta; Em acompanhamento; Aguardando manutenção; Concluída; Cancelada |
| ResponsavelAcompanhamento | Pessoa | Não | Usuários institucionais |
| Prazo | Data | Não | Data |
| DataAbertura | Data e hora | Sim | Data e hora |
| DataConclusao | Data e hora | Não | Data e hora |
| Conclusao | Texto várias linhas | Não | Livre |
| ConcluidoPor | Pessoa | Não | Usuários institucionais |
| Observacoes | Texto várias linhas | Não | Livre |

### 7.3 Campo Title

Usar o campo Title como:

Título curto da pendência.

### 7.4 Configuração do campo PlantaoOrigem

- Tipo: Pesquisa
- Lista relacionada: Plantoes
- Campo exibido: Title

### 7.5 Validação

Após criar a lista, confirmar:

- [ ] Lista PendenciasOperacionais criada.
- [ ] Campo PlantaoOrigem pesquisa a lista Plantoes.
- [ ] Campos de status e prioridade criados corretamente.
- [ ] Campos de conclusão criados corretamente.
- [ ] Campos de Pessoa criados corretamente.

---

## 8. Lista 5 — Ocorrencias

### 8.1 Criar lista

Nome:

Ocorrencias

Descrição:

Registro das ocorrências operacionais vinculadas aos plantões da Brigada de Incêndio.

### 8.2 Campos a criar

| Campo | Tipo | Obrigatório | Valores |
|---|---|---:|---|
| Plantao | Pesquisa | Sim | Lista Plantoes |
| NumeroOcorrencia | Texto uma linha | Sim | Livre |
| DataHoraOcorrencia | Data e hora | Sim | Data e hora |
| TipoOcorrencia | Escolha | Sim | Incêndio; Alarme; Apoio; Inspeção; Anormalidade; Emergência Médica; Vazamento; Treinamento ou Simulado; Outro |
| Local | Texto uma linha | Sim | Livre |
| Unidade | Escolha | Sim | Unidade Central; Angra 1; Angra 2; Angra 3; Apoio Externo; Outro |
| Gravidade | Escolha | Sim | Informativa; Atenção; Crítica |
| Descricao | Texto várias linhas | Sim | Livre |
| AcoesTomadas | Texto várias linhas | Não | Livre |
| Envolvidos | Texto várias linhas | Não | Livre |
| StatusOcorrencia | Escolha | Sim | Aberta; Em andamento; Concluída; Cancelada |
| GeraPendencia | Sim/Não | Sim | Sim/Não |
| PendenciaGerada | Pesquisa | Não | Lista PendenciasOperacionais |
| RegistradoPor | Pessoa | Sim | Usuários institucionais |
| DataRegistro | Data e hora | Sim | Data e hora |

### 8.3 Campo Title

Usar o campo Title como:

Título curto da ocorrência.

### 8.4 Configuração dos campos de pesquisa

Campo Plantao:

- Tipo: Pesquisa
- Lista relacionada: Plantoes
- Campo exibido: Title

Campo PendenciaGerada:

- Tipo: Pesquisa
- Lista relacionada: PendenciasOperacionais
- Campo exibido: Title

### 8.5 Validação

Após criar a lista, confirmar:

- [ ] Lista Ocorrencias criada.
- [ ] Campo Plantao pesquisa a lista Plantoes.
- [ ] Campo PendenciaGerada pesquisa a lista PendenciasOperacionais.
- [ ] Campos de escolha criados corretamente.
- [ ] Campo GeraPendencia criado como Sim/Não.
- [ ] Campos narrativos criados como texto várias linhas.

---

## 9. Teste mínimo após criação

Cadastrar dados fictícios:

### 9.1 Usuarios

- Administrador Teste
- Líder Teste
- Operador Teste

### 9.2 Plantoes

- Title: PL-2026-06-06-DIA-UC
- CodigoPlantao: PL-2026-06-06-DIA-UC
- DataPlantao: 06/06/2026
- Turno: Dia
- Unidade: Unidade Central
- Líder: Sgt. Oliveira
- StatusLivro: Em preenchimento

### 9.3 EquipePlantao

- Sgt. Oliveira — Líder — Presente
- Brigadista Teste 1 — Brigadista — Presente
- Motorista Teste — Motorista — Presente

### 9.4 PendenciasOperacionais

- Pendência aberta de teste.
- Pendência crítica de teste.

### 9.5 Ocorrencias

- Ocorrência informativa de teste.
- Ocorrência crítica de teste.
- Ocorrência vinculada a uma pendência.

---

## 10. Checklist final

Após a criação e os testes fictícios:

- [ ] Todas as listas foram criadas.
- [ ] Todos os campos essenciais foram criados.
- [ ] Campos de pesquisa funcionam.
- [ ] Campos de Pessoa funcionam.
- [ ] Campos de escolha possuem os valores previstos.
- [ ] Dados fictícios foram cadastrados.
- [ ] Plantão possui equipe vinculada.
- [ ] Ocorrência possui plantão vinculado.
- [ ] Pendência possui plantão vinculado.
- [ ] Ocorrência pode ser relacionada a uma pendência.
- [ ] Nenhum dado real sensível foi inserido.

---

## 11. Registro após execução

Depois da criação real, registrar:

- Data da criação.
- Site SharePoint usado.
- Listas criadas.
- Campos que precisaram ser alterados.
- Dificuldades encontradas.
- Prints, se necessário.
- Próximos ajustes antes do Power Apps.

---

## 12. Próxima etapa

Após criação manual e validação:

1. atualizar a documentação com alterações reais;
2. registrar evidências;
3. preparar Power Apps Canvas App;
4. criar AppShell;
5. conectar listas essenciais.
