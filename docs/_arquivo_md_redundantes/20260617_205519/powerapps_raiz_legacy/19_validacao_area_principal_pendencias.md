# V045 - Validação da área principal Pendências

**Projeto:** Livro de Ocorrências Digital da Brigada de Incêndio
**Data:** 10/06/2026
**Responsável:** Warley da Silva Conceição
**Etapa:** Power Apps - Área principal Pendências

## Objetivo

Registrar a validação visual e funcional da área principal **Pendências**, acessada pelo menu lateral na tela `scrDashboard`.

## Estrutura validada

- `ctnPendenciasPrincipal`
- `lblPendenciasTitulo`
- `lblPendenciasResumo`
- `ctnPendenciasAcoes`
- `btnPendenciasNovaPendencia`
- `btnPendenciasAtualizar`
- `ctnPendenciasLista`
- `lblPendenciasListaTitulo`
- `galPendenciasPrincipal`
- `lblGalPendenciasPrincipalResumo`
- `lblPendenciasVazia`

## Navegação validada

Ao clicar no menu lateral **Pendências**, a área principal **Pendências** foi apresentada corretamente.

## Resumo validado

```powerfx
"Plantão: " & Coalesce(varPlantaoAtual.CodigoPlantao; "NÃO ENCONTRADO") &
" | Total de pendências: " &
CountRows(
    Filter(
        PendenciasOperacionais;
        PlantaoOrigem.Id = varPlantaoAtual.ID
    )
)
```

Resultado exibido:

```text
Plantão: PL-2026-06-08-DIA-BI | Total de pendências: 1
```

## Botão Nova Pendência

O botão **Nova Pendência** foi exibido visualmente e permanece com ação provisória por `Notify`, sem abrir formulário nesta etapa.

```powerfx
Notify(
    "O formulário de nova pendência será preparado em etapa posterior.";
    NotificationType.Information
)
```

## Botão Atualizar

O botão **Atualizar** foi validado funcionalmente, exibindo a mensagem de sucesso após atualização.

```powerfx
Refresh(PendenciasOperacionais);;
Set(varPlantaoAtual; LookUp(Plantoes; CodigoPlantao = "PL-2026-06-08-DIA-BI"));;
Notify(
    "Pendências atualizadas.";
    NotificationType.Success
)
```

Mensagem validada:

```text
Pendências atualizadas.
```

## Galeria principal validada

```powerfx
FirstN(
    Filter(
        PendenciasOperacionais;
        PlantaoOrigem.Id = varPlantaoAtual.ID
    );
    20
)
```

## Texto validado na galeria

```powerfx
Coalesce(ThisItem.NumeroPendencia; ThisItem.Title) & " | " &
"Status: " & Coalesce(ThisItem.StatusPendencia.Value; "Status não informado") & Char(10) &
"Local: " & Coalesce(ThisItem.LocalRegistro; "Local não informado") & Char(10) &
Left(Coalesce(ThisItem.Descricao; "Sem descrição registrada."); 120)
```

## Resultado visual validado

Registro fictício exibido:

```text
PEN-TESTE-001 | Status: Aberta
Local: Sala Operacional
Pendência fictícia criada apenas para validar relacionamento com plantão e local operacional.
```

## Conclusão

A área principal **Pendências** foi aprovada visualmente e funcionalmente com dados fictícios.

Próxima etapa sugerida: preparar a área principal **POTS**, acessada pelo menu lateral.
