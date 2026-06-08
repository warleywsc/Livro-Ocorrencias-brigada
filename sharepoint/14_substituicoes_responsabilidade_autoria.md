# Substituições, Responsabilidade do Livro e Autoria de Ocorrências

Projeto: Livro de Ocorrências Digital da Brigada de Incêndio
Data: 08/06/2026
Status: Regra operacional registrada

## 1. Princípio principal

O livro pertence ao plantão, não à pessoa.

Se houver substituição de líder durante o mesmo plantão, o livro continua sendo o mesmo. O que muda é o líder responsável atual pelo preenchimento, acompanhamento e finalização.

Se começar outro turno ou outro plantão, deve existir outro livro.

## 2. Substituição de integrantes

Substituição de integrante não deve ser tratada apenas como status de presença.

A modelagem deve separar:

- presença;
- tipo de vínculo no plantão;
- motivo da substituição;
- quem foi substituído;
- horário de início da atuação;
- horário de fim da atuação;
- atuação extra ou dobra.

## 3. Lista EquipePlantao

A lista EquipePlantao deve conter apenas dados do integrante dentro daquele plantão.

Colunas corretas:

- Título
- Plantao
- Integrante
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
- Observacoes

Colunas que não devem ficar em EquipePlantao:

- LiderEscalado
- LiderResponsavelAtual
- HouveSubstituicaoLider
- LiderSubstituido
- MotivoSubstituicaoLider
- DataHoraAssuncaoLider
- ObservacoesSubstituicaoLider

Essas colunas pertencem à lista Plantoes.

## 4. Valores recomendados para Presenca

Campo:

Presenca

Valores:

- Presente
- Ausente
- Dispensado durante o plantão

Não usar Substituído como valor de Presenca.

## 5. Valores recomendados para TipoVinculoPlantao

Campo:

TipoVinculoPlantao

Valores:

- Escalado
- Substituto
- Apoio eventual

## 6. Valores recomendados para MotivoSubstituicao

Campo:

MotivoSubstituicao

Valores:

- Não se aplica
- Falta
- Troca de serviço
- Dispensa durante o plantão
- Apoio operacional
- Necessidade operacional
- Outro

## 7. Substituição de líder

Quando o líder escalado for substituído, o livro continua sendo o mesmo se ainda for o mesmo plantão.

A transferência de responsabilidade deve ser registrada na lista Plantoes.

Colunas corretas em Plantoes:

- LiderEscalado
- LiderResponsavelAtual
- HouveSubstituicaoLider
- LiderSubstituido
- MotivoSubstituicaoLider
- DataHoraAssuncaoLider
- ObservacoesSubstituicaoLider

## 8. Regra de edição do livro

Em regra, quem edita e finaliza o livro é o LiderResponsavelAtual.

Também podem editar ou finalizar conforme perfil:

- Supervisor
- Administrador

Se outro líder assumir no meio do plantão, ele passa a ser o LiderResponsavelAtual após o registro formal da substituição.

## 9. Substituto que emenda a própria escala

Se um líder substituto cobre a escala de outro líder e depois entra em sua própria escala normal, devem existir dois livros distintos:

- um livro para o plantão coberto como substituto;
- outro livro para o plantão normal dele.

A participação extra ou dobra deve ser registrada na EquipePlantao com AtuacaoExtra = Sim.

## 10. Ocorrências antes da substituição do líder

Ocorrência precisa separar:

- líder responsável atual pelo livro;
- líder responsável no momento do fato;
- usuário que registrou a ocorrência;
- pessoa ou equipe que informou os dados;
- responsável pelo acompanhamento atual da ocorrência.

Se uma ocorrência aconteceu antes da substituição do líder, ela deve manter o líder responsável no momento da ocorrência, mesmo que o líder substituto registre depois.

## 11. Campos recomendados em Ocorrencias

Além dos campos já previstos, incluir:

- LiderResponsavelNoMomento
- RegistroPosteriorPorTerceiro
- MotivoRegistroPosterior
- InformadoPor
- ResponsavelAcompanhamentoOcorrencia

## 12. Regra para ocorrência registrada posteriormente

Se o líder substituto registrar uma ocorrência anterior, o registro deve indicar:

- quem era o líder responsável no momento do fato;
- quem registrou no sistema;
- se o registro foi posterior ou por terceiro;
- quem informou os dados;
- motivo do registro posterior.

## 13. Impacto nas telas

Dashboard Operacional:

- mostrar líder escalado;
- mostrar líder responsável atual;
- destacar substituição de líder quando houver.

Registro do Plantão:

- permitir transferência formal de responsabilidade do líder;
- ocultar campos de substituição quando não houver substituição.

Equipe do Plantão:

- registrar escalados, substitutos, dispensas, ausências e atuação extra.

Nova Ocorrência:

- registrar líder responsável no momento do fato;
- registrar quem está lançando a ocorrência;
- permitir indicar registro posterior ou por terceiro.

Histórico e Relatório:

- exibir substituições de líder;
- exibir autoria e responsabilidade das ocorrências;
- preservar rastreabilidade operacional.

## 14. Status manual

A lista EquipePlantao foi corrigida manualmente no SharePoint, removendo campos de líder que pertenciam à lista Plantoes.

Próxima etapa:

- revisar se Plantoes contém os campos corretos de substituição de líder;
- continuar a criação da lista PendenciasOperacionais;
- ajustar a modelagem da lista Ocorrencias antes da criação.
