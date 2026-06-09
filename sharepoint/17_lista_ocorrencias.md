# Lista Ocorrencias

Projeto: Livro de Ocorrencias Digital da Brigada de Incendio
Data: 08/06/2026
Status: Criada manualmente no SharePoint

## 1. Site

https://etnweb.sharepoint.com/sites/BrigadaIncendio

## 2. Finalidade

A lista Ocorrencias registra ocorrencias operacionais vinculadas aos plantoes da Brigada de Incendio.

Ela tambem controla local detalhado, responsabilidade operacional, autoria do registro, acompanhamento atual e possivel geracao de pendencia.

## 3. Relacionamentos

- Plantao consulta a lista Plantoes.
- LocalOperacional consulta a lista LocaisOperacionais.
- PendenciaGerada consulta a lista PendenciasOperacionais.

## 4. Titulo

A coluna padrao Titulo sera usada como titulo curto da ocorrencia.

Nao criar coluna separada chamada Titulo.

## 5. Localizacao

A ocorrencia pode ser vinculada a um local detalhado por meio do campo LocalOperacional.

Para preservar historico, tambem existem campos de snapshot textual:

- ZonaRegistro
- LocalRegistro
- AreaRegistro
- ElevacaoRegistro
- ComplementoLocal

## 6. Responsabilidade e autoria

A lista separa os seguintes conceitos:

- LiderResponsavelNoMomento: lider responsavel pelo plantao no momento do fato.
- RegistradoPor: usuario que efetivamente registrou a ocorrencia no sistema.
- RegistroPosteriorPorTerceiro: indica se o registro foi posterior ou feito por outra pessoa.
- MotivoRegistroPosterior: motivo do registro posterior ou por terceiro.
- InformadoPor: pessoa ou equipe que forneceu as informacoes.
- ResponsavelAcompanhamentoOcorrencia: pessoa que acompanha a ocorrencia quando houver continuidade.

## 7. Colunas criadas

- Titulo
- Plantao
- NumeroOcorrencia
- DataHoraOcorrencia
- TipoOcorrencia
- PostoServico
- LocalOperacional
- ZonaRegistro
- LocalRegistro
- AreaRegistro
- ElevacaoRegistro
- ComplementoLocal
- Gravidade
- Descricao
- AcoesTomadas
- Envolvidos
- StatusOcorrencia
- GeraPendencia
- PendenciaGerada
- LiderResponsavelNoMomento
- RegistradoPor
- DataRegistro
- RegistroPosteriorPorTerceiro
- MotivoRegistroPosterior
- InformadoPor
- ResponsavelAcompanhamentoOcorrencia
- Observacoes

## 8. Status

A lista Ocorrencias foi criada manualmente no SharePoint.

O campo ComplementoLocal foi corrigido para texto com varias linhas.

## 9. Proxima etapa

Registrar o fechamento da criacao estrutural das listas principais e preparar validacao com dados ficticios.
