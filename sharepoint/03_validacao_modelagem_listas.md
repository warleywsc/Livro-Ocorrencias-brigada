# Validação da Modelagem Inicial das Listas

Projeto: Livro de Ocorrências Digital da Brigada de Incêndio  
Etapa: Modelagem Microsoft Lists / SharePoint  
Status: Validado para refinamento  
Data: 07/06/2026

---

## 1. Decisão

A estrutura inicial com 12 listas será mantida neste momento.

Listas mantidas:

1. Usuarios
2. Plantoes
3. EquipePlantao
4. ViaturasMateriais
5. ConferenciasViaturasMateriais
6. InspecoesRotina
7. Ocorrencias
8. PendenciasOperacionais
9. POTs
10. CienciaPOT
11. ParametrosSistema
12. Auditoria

---

## 2. Justificativa

A separação em listas distintas facilita:

- organização dos dados;
- filtros no Power Apps;
- controle de permissões;
- auditoria;
- histórico operacional;
- manutenção futura;
- relatórios por módulo;
- evolução gradual do sistema.

Evita-se, neste momento, concentrar tudo em uma única lista de registros operacionais, pois isso dificultaria a leitura, os relacionamentos e a manutenção.

---

## 3. Avaliação por grupo funcional

### 3.1 Núcleo do livro de plantão

Listas:

- Plantoes
- EquipePlantao

Essas listas formam o núcleo do livro de plantão.  
Devem ser mantidas separadas porque um plantão pode ter vários integrantes.

### 3.2 Conferência e inspeção

Listas:

- ViaturasMateriais
- ConferenciasViaturasMateriais
- InspecoesRotina

Devem permanecer separadas porque:

- ViaturasMateriais é cadastro base;
- ConferenciasViaturasMateriais registra conferências por plantão;
- InspecoesRotina registra verificações operacionais narrativas.

Essa separação evita misturar cadastro fixo com registros diários.

### 3.3 Ocorrências e pendências

Listas:

- Ocorrencias
- PendenciasOperacionais

Devem permanecer separadas porque ocorrência é fato registrado no plantão, enquanto pendência pode continuar aberta em outros plantões.

Uma ocorrência pode gerar uma pendência, mas a pendência precisa ter vida própria até ser concluída.

### 3.4 POTs e ciência

Listas:

- POTs
- CienciaPOT

Devem permanecer separadas porque:

- POTs armazena o cadastro dos procedimentos;
- CienciaPOT registra a ciência de cada usuário.

Essa separação permite controlar quem ainda está pendente de ciência.

### 3.5 Administração e auditoria

Listas:

- Usuarios
- ParametrosSistema
- Auditoria

Devem permanecer separadas porque tratam de controle administrativo, permissões, parâmetros e rastreabilidade.

---

## 4. Riscos identificados

### 4.1 Excesso de listas

Risco: aumentar a complexidade inicial da criação no SharePoint.

Mitigação:

- criar primeiro apenas as listas essenciais;
- validar com dados fictícios;
- depois avançar para listas administrativas e auditoria.

### 4.2 Relacionamentos no Power Apps

Risco: excesso de campos de pesquisa pode tornar fórmulas e filtros mais trabalhosos.

Mitigação:

- documentar campos-chave;
- usar códigos textuais além dos campos de pesquisa quando necessário;
- evitar dependência excessiva de lookup complexo.

### 4.3 Crescimento de dados

Risco: listas como Ocorrencias, PendenciasOperacionais e Auditoria crescerem com o tempo.

Mitigação:

- criar visões filtradas;
- usar índices em campos de status, data, unidade e prioridade;
- evitar telas que carreguem todos os registros sem filtro.

---

## 5. Estratégia de criação por fases

As listas não precisam ser criadas todas de uma vez.

### Fase 1 — Base operacional mínima

Criar primeiro:

1. Usuarios
2. Plantoes
3. EquipePlantao
4. Ocorrencias
5. PendenciasOperacionais

Objetivo: permitir testar o fluxo principal do livro, ocorrência e pendência.

### Fase 2 — Conferência e inspeção

Criar depois:

6. ViaturasMateriais
7. ConferenciasViaturasMateriais
8. InspecoesRotina

Objetivo: completar o ciclo operacional do plantão.

### Fase 3 — POTs e ciência

Criar depois:

9. POTs
10. CienciaPOT

Objetivo: controlar procedimentos revisados e ciência da equipe.

### Fase 4 — Administração e auditoria

Criar por último:

11. ParametrosSistema
12. Auditoria

Objetivo: melhorar governança, rastreabilidade e administração do sistema.

---

## 6. Próxima decisão necessária

Antes de criar listas no SharePoint, precisamos validar os valores oficiais dos campos de escolha:

- Unidades
- Turnos
- Funções no plantão
- Tipos de ocorrência
- Gravidades
- Status de ocorrência
- Prioridades de pendência
- Status de pendência
- Status do livro
- Perfis de acesso

---

## 7. Decisão final desta etapa

A modelagem inicial das 12 listas está aprovada como base técnica de trabalho.

A criação no SharePoint deve seguir por fases, começando pela base operacional mínima:

1. Usuarios
2. Plantoes
3. EquipePlantao
4. Ocorrencias
5. PendenciasOperacionais

Ainda não criar listas no SharePoint antes de validar os campos de escolha oficiais.
