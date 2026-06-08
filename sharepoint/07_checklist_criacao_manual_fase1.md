# Checklist Operacional — Criação Manual da Fase 1

Projeto: Livro de Ocorrências Digital da Brigada de Incêndio  
Etapa: Microsoft Lists / SharePoint  
Fase: 1 — Listas essenciais  
Status: Checklist preparado  
Data: 07/06/2026

---

## 1. Decisão desta etapa

A criação das listas da Fase 1 será feita manualmente no Microsoft Lists / SharePoint.

Não usar script de criação automática neste momento.

Justificativa:

- reduzir risco de erro estrutural;
- permitir conferência visual dos campos;
- facilitar ajustes durante a primeira montagem;
- validar os tipos de campo diretamente na interface do SharePoint;
- evitar automação antes de confirmar o modelo final.

---

## 2. Ordem oficial de criação

Criar as listas nesta ordem:

1. Usuarios
2. Plantoes
3. EquipePlantao
4. PendenciasOperacionais
5. Ocorrencias

Motivo:

- Usuarios é base de acesso.
- Plantoes é base do livro.
- EquipePlantao depende de Plantoes.
- PendenciasOperacionais depende de Plantoes.
- Ocorrencias depende de Plantoes e pode se relacionar com PendenciasOperacionais.

---

## 3. Checklist antes de começar

Antes de criar qualquer lista, confirmar:

- [ ] Site SharePoint correto.
- [ ] Permissão para criar listas.
- [ ] Repositório GitHub atualizado.
- [ ] Documentação da Fase 1 revisada.
- [ ] Valores de escolha aceitos provisoriamente.
- [ ] Entendimento de que esta é uma base inicial de teste.
- [ ] Nenhum dado real sensível será usado no primeiro teste.

---

## 4. Criar lista Usuarios

### 4.1 Criar lista

Nome da lista:

Usuarios

Descrição sugerida:

Cadastro de usuários autorizados, funções e perfis de acesso do Livro de Ocorrências Digital da Brigada de Incêndio.

### 4.2 Campos

- Title
- Email
- UsuarioMicrosoft
- Matricula
- Funcao
- PerfilAcesso
- PostoServico
- Ativo
- Observacoes

### 4.3 Conferência

Após criar, validar:

- [ ] Lista criada com nome Usuarios.
- [ ] Campo Title mantido.
- [ ] Campo Email criado como texto uma linha.
- [ ] Campo UsuarioMicrosoft criado como Pessoa.
- [ ] Campo Funcao criado como Escolha.
- [ ] Campo PerfilAcesso criado como Escolha.
- [ ] Campo PostoServico criado como Escolha.
- [ ] Campo Ativo criado como Sim/Não.
- [ ] Campo Observacoes criado como texto várias linhas.

---

## 5. Criar lista Plantoes

### 5.1 Criar lista

Nome da lista:

Plantoes

Descrição sugerida:

Registro principal dos livros de plantão da Brigada de Incêndio.

### 5.2 Campos

- Title
- CodigoPlantao
- DataPlantao
- Turno
- Unidade
- LiderPlantao
- StatusLivro
- PassagemServico
- ResumoOperacional
- DataAbertura
- DataFinalizacao
- FinalizadoPor
- JustificativaReabertura
- Observacoes

### 5.3 Conferência

Após criar, validar:

- [ ] Lista criada com nome Plantoes.
- [ ] Campo CodigoPlantao criado.
- [ ] Campo DataPlantao criado como Data.
- [ ] Campo Turno criado como Escolha.
- [ ] Campo Unidade criado como Escolha.
- [ ] Campo LiderPlantao criado como Pessoa.
- [ ] Campo StatusLivro criado como Escolha.
- [ ] Campos narrativos criados como texto várias linhas.
- [ ] Campos de data/hora criados corretamente.

---

## 6. Criar lista EquipePlantao

### 6.1 Criar lista

Nome da lista:

EquipePlantao

Descrição sugerida:

Registro dos integrantes vinculados a cada plantão.

### 6.2 Campos

- Title
- Plantao
- Integrante
- NomeIntegrante
- FuncaoNoPlantao
- Presenca
- HorarioEntrada
- HorarioSaida
- Observacoes

### 6.3 Campo de pesquisa

Campo:

Plantao

Configuração:

- Tipo: Pesquisa
- Lista relacionada: Plantoes
- Campo exibido: Title ou CodigoPlantao

### 6.4 Conferência

Após criar, validar:

- [ ] Lista criada com nome EquipePlantao.
- [ ] Campo Plantao criado como Pesquisa para Plantoes.
- [ ] Campo Integrante criado como Pessoa.
- [ ] Campo NomeIntegrante criado como texto.
- [ ] Campo FuncaoNoPlantao criado como Escolha.
- [ ] Campo Presenca criado como Escolha.
- [ ] HorarioEntrada e HorarioSaida criados como Data e hora.

---

## 7. Criar lista PendenciasOperacionais

### 7.1 Criar lista

Nome da lista:

PendenciasOperacionais

Descrição sugerida:

Controle de pendências operacionais abertas, acompanhadas, concluídas ou canceladas entre plantões.

### 7.2 Campos

- Title
- NumeroPendencia
- PlantaoOrigem
- OrigemPendencia
- Titulo
- Descricao
- Unidade
- Area
- Prioridade
- StatusPendencia
- ResponsavelAcompanhamento
- Prazo
- DataAbertura
- DataConclusao
- Conclusao
- ConcluidoPor
- Observacoes

### 7.3 Campo de pesquisa

Campo:

PlantaoOrigem

Configuração:

- Tipo: Pesquisa
- Lista relacionada: Plantoes
- Campo exibido: Title ou CodigoPlantao

### 7.4 Conferência

Após criar, validar:

- [ ] Lista criada com nome PendenciasOperacionais.
- [ ] Campo NumeroPendencia criado.
- [ ] Campo PlantaoOrigem criado como Pesquisa para Plantoes.
- [ ] Campo OrigemPendencia criado como Escolha.
- [ ] Campo Prioridade criado como Escolha.
- [ ] Campo StatusPendencia criado como Escolha.
- [ ] Campos de conclusão criados.
- [ ] Campo Conclusao criado como texto várias linhas.

---

## 8. Criar lista Ocorrencias

### 8.1 Criar lista

Nome da lista:

Ocorrencias

Descrição sugerida:

Registro das ocorrências operacionais vinculadas aos plantões da Brigada de Incêndio.

### 8.2 Campos

- Title
- Plantao
- NumeroOcorrencia
- DataHoraOcorrencia
- TipoOcorrencia
- Local
- Unidade
- Gravidade
- Descricao
- AcoesTomadas
- Envolvidos
- StatusOcorrencia
- GeraPendencia
- PendenciaGerada
- RegistradoPor
- DataRegistro

### 8.3 Campos de pesquisa

Campo:

Plantao

Configuração:

- Tipo: Pesquisa
- Lista relacionada: Plantoes
- Campo exibido: Title ou CodigoPlantao

Campo:

PendenciaGerada

Configuração:

- Tipo: Pesquisa
- Lista relacionada: PendenciasOperacionais
- Campo exibido: Title ou NumeroPendencia

### 8.4 Conferência

Após criar, validar:

- [ ] Lista criada com nome Ocorrencias.
- [ ] Campo Plantao criado como Pesquisa para Plantoes.
- [ ] Campo NumeroOcorrencia criado.
- [ ] Campo TipoOcorrencia criado como Escolha.
- [ ] Campo Gravidade criado como Escolha.
- [ ] Campo StatusOcorrencia criado como Escolha.
- [ ] Campo GeraPendencia criado como Sim/Não.
- [ ] Campo PendenciaGerada criado como Pesquisa.
- [ ] Campo RegistradoPor criado como Pessoa.
- [ ] Campo DataRegistro criado como Data e hora.

---

## 9. Dados fictícios para teste inicial

Após criar as listas, cadastrar somente dados fictícios.

### Usuarios

- Administrador Teste
- Líder Teste
- Operador Teste

### Plantoes

- Data: 06/06/2026
- Turno: Dia
- Unidade: Unidade Central
- Líder: Sgt. Oliveira
- Status: Em preenchimento

### EquipePlantao

- Sgt. Oliveira — Líder — Presente
- Brigadista Teste 1 — Brigadista — Presente
- Motorista Teste — Motorista — Presente

### Ocorrencias

- Ocorrência informativa de teste.
- Ocorrência crítica de teste.

### PendenciasOperacionais

- Pendência aberta de teste.
- Pendência crítica de teste.

---

## 10. Validação após criação

Depois de criar as listas, validar:

- [ ] Todas as listas aparecem no site SharePoint.
- [ ] Os nomes estão sem acento e sem espaço.
- [ ] Os campos obrigatórios foram criados.
- [ ] Os campos de escolha possuem os valores corretos.
- [ ] Os campos de pesquisa funcionam.
- [ ] Os campos de Pessoa localizam usuários institucionais.
- [ ] É possível cadastrar um plantão.
- [ ] É possível vincular equipe ao plantão.
- [ ] É possível criar ocorrência vinculada ao plantão.
- [ ] É possível criar pendência vinculada ao plantão.
- [ ] É possível vincular ocorrência a pendência.

---

## 11. O que não fazer nesta etapa

Não fazer ainda:

- Não criar app no Power Apps.
- Não criar automações.
- Não criar fluxos Power Automate.
- Não usar dados reais sensíveis.
- Não publicar para usuários finais.
- Não apagar listas depois de criar sem registrar motivo.
- Não alterar nomes internos das listas sem registrar.

---

## 12. Próxima etapa depois da criação manual

Após a criação manual e validação das listas, a próxima etapa será:

1. registrar evidências da criação;
2. ajustar a documentação se algum campo mudar;
3. preparar o primeiro Canvas App no Power Apps;
4. criar a estrutura visual base:
   - AppShell
   - Header
   - Sidebar
   - Footer
5. conectar as listas essenciais;
6. montar o Dashboard inicial com dados fictícios.

