# V075 - Snapshot do código YAML atual do Power Apps

## Objetivo

Registrar no repositório o snapshot atual do código YAML da tela principal do app Power Apps.

## Motivo

Durante a construção do Livro do Plantão em fluxo contínuo, foi validado que a Exibição de Código do Power Apps Studio permite copiar estruturas YAML dos controles.

A partir desta etapa, o projeto passa a armazenar também o código YAML atual do app no repositório, facilitando:

- consulta histórica;
- comparação entre versões;
- recuperação de controles;
- reaproveitamento de blocos YAML;
- análise de mudanças visuais e estruturais;
- continuidade do projeto em novos chats.

## Arquivos criados

- `powerapps/source/scrDashboard.pa.yaml`
- `powerapps/source/snapshots/scrDashboard_V075_2026-06-16.pa.yaml`

## Regra adotada

O arquivo abaixo será sempre o snapshot atual mais recente da tela principal:

`powerapps/source/scrDashboard.pa.yaml`

A pasta abaixo manterá snapshots históricos por versão:

`powerapps/source/snapshots/`

## Estado atual registrado

Snapshot gerado após validação da V074, contendo a estrutura visual do Livro do Plantão em fluxo contínuo até a seção:

`6. POTS Revisados`

## Próxima etapa

V076 - Inserir estrutura inicial de Ocorrências do Plantão no fluxo contínuo.