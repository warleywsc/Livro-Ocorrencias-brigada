# V093F - Sincronização segura do Power Apps Studio para o VS Code

DATA_HORA=2026-06-20 23:05:02

## Decisão

O Power Apps Studio foi considerado a fonte oficial do estado atual do app, porque o app estava visualmente normal e o problema identificado ocorreu no arquivo local/repositório.

## Ação executada

O YAML completo atual do Power Apps Studio foi sincronizado com:

- powerapps/source/scrDashboard.pa.yaml

## Segurança aplicada

A sincronização só foi aceita porque o conteúdo:

- contém Screens;
- contém scrDashboard;
- contém ctnLivroSecaoSelecaoPlantao;
- contém btnSelecaoPlantaoCarregar;
- contém btnSelecaoPlantaoCriar;
- contém btnTecnicoRecalcularPermissoesPlantao;
- não aparenta ser relatório de diagnóstico;
- não aparenta ser script PowerShell.

## Arquivos

BACKUP_ANTES_SYNC=powerapps\source\backups\scrDashboard_antes_sync_seguro_V093F_20260620_230502.pa.yaml

SNAPSHOT_SYNC=powerapps\source\snapshots\scrDashboard_V093F_powerapps_studio_atual_20260620_230502.pa.yaml

## Observação sobre V093E

Os YAMLs gerados na V093E foram apenas patches preventivos.

Eles não devem ser colados no Power Apps, pois o app real já está correto no Power Apps Studio.

## Validação

SCORE=102/102

Item                                      Status Peso
----                                      ------ ----
Nao parece script ou relatorio            OK        5
Tem Screens                               OK        5
Tem scrDashboard                          OK        5
Tem Properties                            OK        3
Tem Children                              OK        3
Tem OnVisible                             OK        3
Tem Refresh Usuarios                      OK        2
Tem Refresh Plantoes                      OK        2
Tem HistoricoReaberturasPlantao           OK        2
Tem ctnLivroPlantao                       OK        3
Tem ctnLivroPlantaoFluxoContinuo          OK        4
Tem ctnLivroSecaoSelecaoPlantao           OK        5
Tem btnTecnicoRecalcularPermissoesPlantao OK        5
Tem btnSelecaoPlantaoCarregar             OK        5
Tem btnSelecaoPlantaoCriar                OK        5
Tem ctnLivroSecaoCabecalho                OK        3
Tem ctnLivroSecaoRecebimentoServico       OK        3
Tem ctnLivroSecaoEquipe                   OK        3
Tem ctnLivroSecaoViaturasMateriais        OK        3
Tem ctnLivroSecaoInspecaoRotina           OK        3
Tem ctnLivroSecaoPotsRevisados            OK        3
Tem ctnLivroSecaoOcorrenciasPlantao       OK        3
Tem ctnLivroSecaoPendenciasOperacionais   OK        3
Tem ctnLivroSecaoRevisaoFinalizacao       OK        3
Tem Patch                                 OK        3
Tem LookUp                                OK        3
Tem Defaults Plantoes                     OK        3
Tem varPlantaoAtual                       OK        3
Tem varPodeSalvarLivroPlantao             OK        2
Tem varPodeFinalizarLivroPlantao          OK        2
Tem varPodeReabrirLivroPlantao            OK        2

## Próxima etapa

V093G - validar o fluxo real do Livro do Plantão no app e registrar o resultado.
