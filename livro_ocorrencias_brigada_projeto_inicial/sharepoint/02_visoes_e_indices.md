# Visões e Índices — SharePoint / Microsoft Lists

## 1. Princípio

As listas devem ter visões filtradas e campos indexados para evitar lentidão conforme o volume de dados crescer.

## 2. Visões sugeridas

### Plantoes

- Plantão atual.
- Plantões em preenchimento.
- Plantões finalizados.
- Plantões por unidade.
- Plantões por data.

Índices sugeridos:

- DataPlantao.
- StatusLivro.
- Unidade.
- Turno.

### Ocorrencias

- Ocorrências do plantão atual.
- Ocorrências abertas.
- Ocorrências concluídas.
- Ocorrências por unidade.
- Ocorrências por gravidade.
- Ocorrências por período.

Índices sugeridos:

- Plantao.
- DataHoraOcorrencia.
- StatusOcorrencia.
- Unidade.
- Gravidade.

### PendenciasOperacionais

- Pendências abertas.
- Pendências críticas.
- Pendências em acompanhamento.
- Pendências aguardando manutenção.
- Pendências concluídas.
- Pendências por unidade.

Índices sugeridos:

- StatusPendencia.
- Prioridade.
- Unidade.
- Prazo.
- PlantaoOrigem.

### CienciaPOT

- Ciências pendentes.
- Ciências por usuário.
- Ciências por POT.

Índices sugeridos:

- POT.
- Usuario.
- StatusCiencia.

### Auditoria

- Auditoria por data.
- Auditoria por usuário.
- Auditoria por entidade.

Índices sugeridos:

- DataHora.
- Usuario.
- Entidade.
