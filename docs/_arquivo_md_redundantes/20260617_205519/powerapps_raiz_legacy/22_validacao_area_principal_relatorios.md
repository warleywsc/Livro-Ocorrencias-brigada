# V048 - Validação da área principal Relatórios

**Projeto:** Livro de Ocorrências Digital da Brigada de Incêndio
**Data:** 10/06/2026
**Responsável:** Warley da Silva Conceição
**Etapa:** Power Apps - Área principal Relatórios

## Objetivo

Registrar a validação visual e funcional inicial da área principal **Relatórios**, acessada pelo menu lateral na tela `scrDashboard`.

## Estrutura validada

- `ctnRelatoriosPrincipal`
- `lblRelatoriosTitulo`
- `lblRelatoriosResumo`
- `ctnRelatoriosAcoes`
- `btnRelatoriosAtualizar`
- `btnRelatoriosGerarRelatorio`
- `btnRelatoriosExportar`
- `ctnRelatoriosPainel`
- `lblRelatoriosPainelTitulo`
- `lblRelatoriosResumoPlantao`
- `lblRelatoriosIndicadores`
- `lblRelatoriosStatusInicial`

## Navegação validada

Ao clicar no menu lateral **Relatórios**, a área principal **Relatórios** foi apresentada corretamente.

## Resumo validado

```powerfx
"Plantão: " & Coalesce(varPlantaoAtual.CodigoPlantao; "NÃO ENCONTRADO") &
" | Relatórios operacionais e consolidação inicial"
```

Resultado exibido:

```text
Plantão: PL-2026-06-08-DIA-BI | Relatórios operacionais e consolidação inicial
```

## Botão Atualizar

O botão **Atualizar** foi validado funcionalmente, exibindo a mensagem de sucesso.

```powerfx
Refresh(Plantoes);;
Refresh(EquipePlantao);;
Refresh(Ocorrencias);;
Refresh(PendenciasOperacionais);;
Set(varPlantaoAtual; LookUp(Plantoes; CodigoPlantao = "PL-2026-06-08-DIA-BI"));;
Notify(
    "Relatórios atualizados.";
    NotificationType.Success
)
```

Mensagem validada:

```text
Relatórios atualizados.
```

## Botão Gerar Relatório

O botão **Gerar Relatório** foi exibido visualmente e permanece com ação provisória por `Notify`.

```powerfx
Notify(
    "A geração de relatório será preparada em etapa posterior.";
    NotificationType.Information
)
```

## Botão Exportar

O botão **Exportar** foi exibido visualmente e permanece com ação provisória por `Notify`.

```powerfx
Notify(
    "A exportação de relatório será preparada em etapa posterior.";
    NotificationType.Information
)
```

## Painel de relatórios validado

Título exibido:

```text
Resumo para Relatório do Plantão
```

Resumo do plantão exibido:

```text
Plantão: PL-2026-06-08-DIA-BI
Status do livro: Em preenchimento
Líder responsável: Warley da Silva Conceição
```

Indicadores exibidos:

```text
Equipe registrada: 2
Ocorrências registradas: 1
Pendências registradas: 1
Livro pronto para relatório: Sim
```

Texto informativo exibido:

```text
Status inicial: painel de relatórios criado para consolidar os principais dados do plantão atual. Geração, exportação e filtros por período serão preparados em etapa posterior.
```

## Conclusão

A área principal **Relatórios** foi aprovada visualmente e funcionalmente em estrutura inicial, com dados fictícios.

Próxima etapa sugerida: preparar a área principal **Administração**, acessada pelo menu lateral.
