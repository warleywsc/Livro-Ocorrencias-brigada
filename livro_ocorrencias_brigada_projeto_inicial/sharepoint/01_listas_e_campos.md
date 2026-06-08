# Estrutura de Dados — Microsoft Lists / SharePoint

## Observação

Esta estrutura deve ser validada antes da criação real das listas.

## 1. Usuarios

Finalidade: controlar usuários autorizados e perfis de acesso.

| Campo | Tipo sugerido | Obrigatório | Observação |
|---|---|---:|---|
| Nome | Texto | Sim | Nome completo |
| Email | Pessoa ou Texto | Sim | Preferir Pessoa quando possível |
| Matricula | Texto | Não | Opcional |
| Funcao | Escolha | Sim | Brigadista, Líder, Supervisor, Administrador |
| PerfilAcesso | Escolha | Sim | Leitura, Operador, Líder, Supervisor, Administrador |
| UnidadePadrao | Escolha ou Pesquisa | Não | Unidade principal |
| Ativo | Sim/Não | Sim | Controla acesso lógico |
| Observacoes | Múltiplas linhas | Não | Campo administrativo |

## 2. Plantoes

Finalidade: registrar o cabeçalho principal do livro de plantão.

| Campo | Tipo sugerido | Obrigatório | Observação |
|---|---|---:|---|
| CodigoPlantao | Texto | Sim | Código único |
| DataPlantao | Data | Sim | Data do plantão |
| Turno | Escolha | Sim | Dia, Noite, Administrativo, Extra |
| Unidade | Escolha ou Pesquisa | Sim | Unidade vinculada |
| LiderPlantao | Pessoa | Sim | Responsável |
| StatusLivro | Escolha | Sim | Em preenchimento, Finalizado, Reaberto, Cancelado |
| PassagemServico | Múltiplas linhas | Não | Registro da passagem |
| ResumoOperacional | Múltiplas linhas | Não | Resumo geral |
| DataAbertura | Data/Hora | Sim | Automático quando possível |
| DataFinalizacao | Data/Hora | Não | Ao finalizar |
| FinalizadoPor | Pessoa | Não | Ao finalizar |
| JustificativaReabertura | Múltiplas linhas | Não | Exigida se reabrir |
| Observacoes | Múltiplas linhas | Não | Complemento |

## 3. EquipePlantao

| Campo | Tipo sugerido | Obrigatório | Observação |
|---|---|---:|---|
| Plantao | Pesquisa | Sim | Relaciona com Plantoes |
| Integrante | Pessoa ou Texto | Sim | Nome do integrante |
| FuncaoNoPlantao | Escolha | Sim | Líder, Motorista, Brigadista, Apoio |
| Presenca | Escolha | Sim | Presente, Ausente, Substituído |
| HorarioEntrada | Data/Hora | Não | Opcional |
| HorarioSaida | Data/Hora | Não | Opcional |
| Observacoes | Múltiplas linhas | Não | Complemento |

## 4. ViaturasMateriais

| Campo | Tipo sugerido | Obrigatório | Observação |
|---|---|---:|---|
| NomeItem | Texto | Sim | Nome da viatura/material/equipamento |
| Categoria | Escolha | Sim | Viatura, Material, EPI, Equipamento, Sistema |
| Unidade | Escolha ou Pesquisa | Sim | Unidade vinculada |
| CodigoInterno | Texto | Não | Código interno |
| Ativo | Sim/Não | Sim | Define se aparece nas conferências |
| OrdemExibicao | Número | Não | Ordenação visual |
| Observacoes | Múltiplas linhas | Não | Complemento |

## 5. ConferenciasViaturasMateriais

| Campo | Tipo sugerido | Obrigatório | Observação |
|---|---|---:|---|
| Plantao | Pesquisa | Sim | Relaciona com Plantoes |
| Item | Pesquisa | Sim | Relaciona com ViaturasMateriais |
| StatusConferencia | Escolha | Sim | Normal, Com observação, Fora de operação, Não verificado |
| Condicao | Escolha | Sim | Operacional, Restrição, Indisponível |
| Observacao | Múltiplas linhas | Não | Detalhes |
| RequerPendencia | Sim/Não | Sim | Indica necessidade de pendência |
| RegistradoPor | Pessoa | Sim | Usuário responsável |
| DataRegistro | Data/Hora | Sim | Registro |

## 6. InspecoesRotina

| Campo | Tipo sugerido | Obrigatório | Observação |
|---|---|---:|---|
| Plantao | Pesquisa | Sim | Relaciona com Plantoes |
| AreaInspecionada | Texto ou Escolha | Sim | Local inspecionado |
| TipoInspecao | Escolha | Sim | Rotina, Preventiva, Verificação, Extraordinária |
| StatusInspecao | Escolha | Sim | Normal, Atenção, Crítica, Não verificado |
| Descricao | Múltiplas linhas | Sim | Registro técnico |
| AcaoNecessaria | Múltiplas linhas | Não | Providência indicada |
| GeraPendencia | Sim/Não | Sim | Controla pendência |
| RegistradoPor | Pessoa | Sim | Responsável |
| DataRegistro | Data/Hora | Sim | Registro |

## 7. Ocorrencias

| Campo | Tipo sugerido | Obrigatório | Observação |
|---|---|---:|---|
| Plantao | Pesquisa | Sim | Relaciona com Plantoes |
| NumeroOcorrencia | Texto | Sim | Código único |
| DataHoraOcorrencia | Data/Hora | Sim | Momento do fato |
| TipoOcorrencia | Escolha | Sim | Incêndio, Alarme, Apoio, Inspeção, Anormalidade, Outro |
| Local | Texto | Sim | Local da ocorrência |
| Unidade | Escolha | Sim | Unidade envolvida |
| Gravidade | Escolha | Sim | Informativa, Atenção, Crítica |
| Descricao | Múltiplas linhas | Sim | Descrição objetiva |
| AcoesTomadas | Múltiplas linhas | Não | Providências executadas |
| Envolvidos | Múltiplas linhas | Não | Pessoas/setores envolvidos |
| StatusOcorrencia | Escolha | Sim | Aberta, Em andamento, Concluída, Cancelada |
| GeraPendencia | Sim/Não | Sim | Indica desdobramento |
| RegistradoPor | Pessoa | Sim | Responsável |
| DataRegistro | Data/Hora | Sim | Registro |

## 8. PendenciasOperacionais

| Campo | Tipo sugerido | Obrigatório | Observação |
|---|---|---:|---|
| NumeroPendencia | Texto | Sim | Código único |
| PlantaoOrigem | Pesquisa | Sim | Plantão onde foi criada |
| OrigemPendencia | Escolha | Sim | Ocorrência, Inspeção, Conferência, Passagem de serviço, Manual |
| Titulo | Texto | Sim | Resumo |
| Descricao | Múltiplas linhas | Sim | Detalhamento |
| Unidade | Escolha | Sim | Unidade relacionada |
| Area | Texto | Não | Local ou área |
| Prioridade | Escolha | Sim | Baixa, Média, Alta, Crítica |
| StatusPendencia | Escolha | Sim | Aberta, Em acompanhamento, Aguardando manutenção, Concluída, Cancelada |
| ResponsavelAcompanhamento | Pessoa | Não | Responsável |
| Prazo | Data | Não | Prazo desejado |
| DataAbertura | Data/Hora | Sim | Criação |
| DataConclusao | Data/Hora | Não | Encerramento |
| Conclusao | Múltiplas linhas | Não | Registro final |

## 9. POTs

| Campo | Tipo sugerido | Obrigatório | Observação |
|---|---|---:|---|
| CodigoPOT | Texto | Sim | Código do procedimento |
| TituloPOT | Texto | Sim | Nome do POT |
| Versao | Texto | Sim | Versão/revisão |
| DataRevisao | Data | Sim | Data da revisão |
| StatusPOT | Escolha | Sim | Ativo, Substituído, Cancelado |
| LinkDocumento | Hiperlink | Não | Link no SharePoint |
| RequerCiencia | Sim/Não | Sim | Controla ciência |
| Observacoes | Múltiplas linhas | Não | Complemento |

## 10. CienciaPOT

| Campo | Tipo sugerido | Obrigatório | Observação |
|---|---|---:|---|
| POT | Pesquisa | Sim | Relaciona com POTs |
| Usuario | Pessoa | Sim | Quem deu ciência |
| DataCiencia | Data/Hora | Não | Data do aceite |
| StatusCiencia | Escolha | Sim | Pendente, Ciente |
| Observacao | Múltiplas linhas | Não | Complemento |

## 11. ParametrosSistema

| Campo | Tipo sugerido | Obrigatório | Observação |
|---|---|---:|---|
| Chave | Texto | Sim | Nome do parâmetro |
| Valor | Texto | Sim | Valor configurado |
| Categoria | Escolha | Sim | Geral, Permissão, Relatório, Integração |
| Ativo | Sim/Não | Sim | Controla uso |
| Observacoes | Múltiplas linhas | Não | Detalhes |

## 12. Auditoria

| Campo | Tipo sugerido | Obrigatório | Observação |
|---|---|---:|---|
| Usuario | Pessoa | Sim | Quem executou |
| Acao | Texto | Sim | Ação realizada |
| Entidade | Texto | Sim | Lista ou módulo afetado |
| RegistroRelacionado | Texto | Não | ID/código relacionado |
| DataHora | Data/Hora | Sim | Momento da ação |
| Detalhes | Múltiplas linhas | Não | Informações adicionais |
