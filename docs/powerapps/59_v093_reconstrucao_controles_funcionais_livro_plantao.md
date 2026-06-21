# V093E - Geração dos YAMLs funcionais do Livro do Plantão

DATA_HORA=2026-06-20 22:53:48

## Objetivo

Gerar blocos YAML para reconstrução dos controles funcionais do Livro do Plantão:

- seleção/carregamento/criação de plantão;
- recalculo de permissões;
- salvamento;
- finalização com confirmação;
- reabertura com justificativa e histórico.

## Arquivos gerados

- powerapps\source\patches\V093\ctnLivroSecaoSelecaoPlantao_V093_RECONSTRUIR.pa.yaml
- powerapps\source\patches\V093\btnTecnicoRecalcularPermissoesPlantao_V093_OCULTO.pa.yaml
- powerapps\source\patches\V093\ctnLivroSecaoRevisaoFinalizacao_V093_FUNCIONAL.pa.yaml
- powerapps\source\patches\V093\ctnModaisFinalizacaoReabertura_V093.pa.yaml
- powerapps\source\patches\V093\ORDEM_COLAGEM_V093.txt

## Observação

Os arquivos foram gerados como patches para colagem manual no Power Apps.  
Não houve sincronização automática do clipboard para o arquivo principal.
