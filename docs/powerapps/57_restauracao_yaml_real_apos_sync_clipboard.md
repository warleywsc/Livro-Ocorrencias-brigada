# V093C - Restauração do YAML real após sincronização indevida do clipboard

DATA_HORA=2026-06-20 22:48:48

## Motivo

Durante a etapa V093A, o arquivo principal do Power Apps foi sobrescrito por conteúdo de diagnóstico que estava no clipboard, porque o texto continha nomes de controles usados como critério de validação.

## Ação executada

O arquivo principal foi restaurado a partir do melhor candidato YAML localizado nos backups/snapshots do projeto.

## Arquivos

ARQUIVO_PRINCIPAL=powerapps/source/scrDashboard.pa.yaml

CANDIDATO_RESTAURADO=C:\Projetos\Livro-Ocorrencias-brigada\powerapps\source\snapshots\scrDashboard_V079_2026-06-16.pa.yaml

BACKUP_DO_ARQUIVO_CORROMPIDO=powerapps\source\backups\scrDashboard_CORROMPIDO_por_clipboard_V093B_20260620_224848.pa.yaml

SNAPSHOT_RESTAURADO=powerapps\source\snapshots\scrDashboard_V093C_restaurado_yaml_real_20260620_224848.pa.yaml

SCORE_ANTES=-500

SCORE_RESTAURADO=120

## Decisão

A partir desta correção, diagnósticos que validem o conteúdo do YAML não devem aceitar como YAML válido textos de relatório, scripts PowerShell ou conteúdo contendo Set-Clipboard, $testes ou $ErrorActionPreference.

## Próxima etapa

V093 - reconstruir ou validar os controles funcionais reais do fluxo do Livro do Plantão:
- carregar plantão;
- criar plantão;
- salvar rascunho;
- finalizar com confirmação;
- reabrir com justificativa;
- registrar histórico de reabertura.
