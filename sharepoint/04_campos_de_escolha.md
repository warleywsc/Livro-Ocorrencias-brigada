# Campos de Escolha — Microsoft Lists / SharePoint

Projeto: Livro de Ocorrências Digital da Brigada de Incêndio  
Versão: 0.1  
Status: Proposta inicial para validação  
Data: 07/06/2026

---

## 1. Objetivo

Este documento define os valores iniciais sugeridos para campos do tipo Escolha nas listas do Microsoft Lists / SharePoint.

Esses valores serão usados futuramente no Power Apps para:

- filtros;
- formulários;
- validações;
- regras de visibilidade;
- indicadores;
- relatórios;
- controle de permissões.

Nenhuma lista deve ser criada no SharePoint antes da validação destes valores.

---

## 2. Unidades

Campo sugerido:

- Unidade
- PostoServico

Valores propostos:

| Valor | Uso |
|---|---|
| Unidade Central | Valor usado no protótipo visual |
| Angra 1 | Unidade operacional |
| Angra 2 | Unidade operacional |
| Angra 3 | Unidade operacional |
| Apoio Externo | Quando o registro envolver apoio fora da unidade principal |
| Outro | Uso excepcional |

Observação:

O valor **Unidade Central** deve ser mantido porque foi usado nos dados fictícios do protótipo aprovado.

---

## 3. Turnos

Campo sugerido:

- Turno

Valores propostos:

| Valor | Uso |
|---|---|
| Dia | Plantão diurno |
| Noite | Plantão noturno |
| Administrativo | Uso em rotina administrativa |
| Extra | Plantões ou registros extraordinários |

---

## 4. Status do Livro

Campo sugerido:

- StatusLivro

Valores propostos:

| Valor | Uso |
|---|---|
| Em preenchimento | Livro aberto e em edição |
| Finalizado | Livro encerrado |
| Reaberto | Livro finalizado que precisou ser reaberto |
| Cancelado | Registro cancelado por erro ou motivo administrativo |

Regra:

- O status inicial deve ser **Em preenchimento**.
- O status **Finalizado** deve bloquear edição comum.
- O status **Reaberto** deve exigir justificativa.
- O status **Cancelado** deve exigir justificativa.

---

## 5. Funções no Plantão

Campos sugeridos:

- Funcao
- FuncaoNoPlantao

Valores propostos:

| Valor | Uso |
|---|---|
| Líder | Responsável pelo plantão |
| Motorista | Integrante com função de motorista |
| Brigadista | Integrante da equipe |
| Apoio | Participação de apoio operacional |
| Supervisor | Função de supervisão |
| Administrador | Uso administrativo do sistema |
| Outro | Uso excepcional |

---

## 6. Perfis de Acesso

Campo sugerido:

- PerfilAcesso

Valores propostos:

| Valor | Uso |
|---|---|
| Leitura | Apenas consulta |
| Operador | Registra dados operacionais |
| Lider | Abre, conduz e finaliza livro |
| Supervisor | Consulta, acompanha, reabre e valida registros |
| Administrador | Gerencia usuários, cadastros, parâmetros e permissões |

Observação:

No campo interno, usar **Lider** sem acento para reduzir risco em fórmulas e integrações.  
Na interface do Power Apps, exibir **Líder** com acento.

---

## 7. Categorias de Viaturas e Materiais

Campo sugerido:

- Categoria

Valores propostos:

| Valor | Uso |
|---|---|
| Viatura | Veículos operacionais |
| Material | Materiais diversos |
| EPI | Equipamentos de proteção individual |
| Equipamento | Equipamentos operacionais |
| Sistema | Sistemas fixos ou recursos de apoio |
| Outro | Uso excepcional |

---

## 8. Status de Conferência

Campo sugerido:

- StatusConferencia

Valores propostos:

| Valor | Uso |
|---|---|
| Normal | Item conferido sem observação |
| Com observação | Item conferido com ressalva |
| Fora de operação | Item indisponível |
| Não verificado | Item não conferido |

Regras:

- **Fora de operação** deve exigir observação.
- **Não verificado** deve exigir justificativa.
- **Com observação** deve exigir texto explicativo.

---

## 9. Condição de Item Conferido

Campo sugerido:

- Condicao

Valores propostos:

| Valor | Uso |
|---|---|
| Operacional | Item disponível para uso |
| Restrição | Item disponível com restrição |
| Indisponível | Item sem condição de uso |

Regra:

- **Restrição** e **Indisponível** devem exigir observação.

---

## 10. Tipos de Inspeção

Campo sugerido:

- TipoInspecao

Valores propostos:

| Valor | Uso |
|---|---|
| Rotina | Verificação de rotina |
| Preventiva | Verificação preventiva |
| Verificação | Conferência pontual |
| Extraordinária | Inspeção fora da rotina |
| Outro | Uso excepcional |

---

## 11. Status de Inspeção

Campo sugerido:

- StatusInspecao

Valores propostos:

| Valor | Uso |
|---|---|
| Normal | Sem anormalidade |
| Atenção | Situação exige acompanhamento |
| Crítica | Situação exige ação prioritária |
| Não verificado | Inspeção não realizada |

Regras:

- **Crítica** deve exigir ação necessária.
- **Não verificado** deve exigir justificativa.

---

## 12. Tipos de Ocorrência

Campo sugerido:

- TipoOcorrencia

Valores propostos:

| Valor | Uso |
|---|---|
| Incêndio | Princípio ou ocorrência de incêndio |
| Alarme | Acionamento de alarme |
| Apoio | Apoio operacional |
| Inspeção | Registro relacionado à inspeção |
| Anormalidade | Situação anormal identificada |
| Emergência Médica | Atendimento ou apoio relacionado à saúde |
| Vazamento | Vazamento, derramamento ou contenção |
| Treinamento ou Simulado | Atividade simulada registrada |
| Outro | Uso excepcional |

---

## 13. Gravidade da Ocorrência

Campo sugerido:

- Gravidade

Valores propostos:

| Valor | Uso |
|---|---|
| Informativa | Registro sem criticidade |
| Atenção | Requer acompanhamento |
| Crítica | Requer ação prioritária |

Regra:

- Ocorrência com gravidade **Crítica** deve aparecer em destaque no Dashboard.

---

## 14. Status da Ocorrência

Campo sugerido:

- StatusOcorrencia

Valores propostos:

| Valor | Uso |
|---|---|
| Aberta | Registro iniciado |
| Em andamento | Situação em acompanhamento |
| Concluída | Ocorrência encerrada |
| Cancelada | Registro cancelado |

Regras:

- **Concluída** deve exigir ações tomadas.
- **Cancelada** deve exigir justificativa.

---

## 15. Origem da Pendência

Campo sugerido:

- OrigemPendencia

Valores propostos:

| Valor | Uso |
|---|---|
| Ocorrência | Gerada a partir de ocorrência |
| Inspeção | Gerada a partir de inspeção |
| Conferência | Gerada a partir de conferência de item |
| Passagem de serviço | Gerada durante passagem de serviço |
| Manual | Criada diretamente pelo usuário |

---

## 16. Prioridade da Pendência

Campo sugerido:

- Prioridade

Valores propostos:

| Valor | Uso |
|---|---|
| Baixa | Pode aguardar acompanhamento |
| Média | Deve ser acompanhada |
| Alta | Requer atenção prioritária |
| Crítica | Requer destaque e ação urgente |

Regra:

- Pendência **Crítica** deve aparecer em destaque no Dashboard.

---

## 17. Status da Pendência

Campo sugerido:

- StatusPendencia

Valores propostos:

| Valor | Uso |
|---|---|
| Aberta | Pendência criada |
| Em acompanhamento | Pendência em tratativa |
| Aguardando manutenção | Depende de manutenção ou apoio externo |
| Concluída | Pendência encerrada |
| Cancelada | Pendência cancelada |

Regras:

- **Concluída** deve exigir conclusão, responsável e data.
- **Cancelada** deve exigir justificativa.

---

## 18. Status do POT

Campo sugerido:

- StatusPOT

Valores propostos:

| Valor | Uso |
|---|---|
| Ativo | POT vigente |
| Substituído | POT substituído por nova revisão |
| Cancelado | POT cancelado ou sem aplicação |

---

## 19. Status de Ciência

Campo sugerido:

- StatusCiencia

Valores propostos:

| Valor | Uso |
|---|---|
| Pendente | Ciência ainda não registrada |
| Ciente | Ciência registrada |

Regra:

- Ao mudar para **Ciente**, registrar DataCiencia.

---

## 20. Categorias de Parâmetros

Campo sugerido:

- Categoria

Valores propostos para ParametrosSistema:

| Valor | Uso |
|---|---|
| Geral | Configurações gerais |
| Permissão | Configurações de acesso |
| Relatório | Configurações de relatório |
| Integração | Configurações de integração |
| Visual | Configurações visuais ou de exibição |

---

## 21. Ações de Auditoria

Campo sugerido:

- Acao

Valores propostos:

| Valor | Uso |
|---|---|
| Criou registro | Novo registro criado |
| Alterou registro | Registro alterado |
| Excluiu registro | Registro excluído |
| Finalizou livro | Livro de plantão finalizado |
| Reabriu livro | Livro de plantão reaberto |
| Criou pendência | Pendência criada |
| Concluiu pendência | Pendência concluída |
| Cancelou pendência | Pendência cancelada |
| Alterou permissão | Perfil ou usuário alterado |
| Alterou parâmetro | Parâmetro do sistema alterado |
| Registrou ciência | Ciência de POT registrada |

---

## 22. Decisões pendentes

Antes da criação real das listas, validar:

- Se as unidades oficiais são exatamente as listadas.
- Se haverá separação por Angra 1, Angra 2 e Angra 3.
- Se "Unidade Central" será unidade operacional real ou apenas referência visual do MVP.
- Se "Emergência Médica" deve entrar como tipo de ocorrência.
- Se "Treinamento ou Simulado" deve entrar como tipo de ocorrência.
- Se pendências terão prazo obrigatório.
- Se haverá perfil separado para "Consulta Gerencial".
- Se "Administrador" será um perfil operacional ou apenas técnico.

---

## 23. Status deste documento

Status atual:

- Proposta inicial criada.
- Aguardando validação operacional.
- Ainda não criar listas no SharePoint.

