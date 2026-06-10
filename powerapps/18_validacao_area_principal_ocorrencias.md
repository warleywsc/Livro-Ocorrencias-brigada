# V044 - Validação da área principal Ocorrências

**Projeto:** Livro de Ocorrências Digital da Brigada de Incêndio
**Data:** 10/06/2026
**Responsável:** Warley da Silva Conceição
**Etapa:** Power Apps - Área principal Ocorrências

## Objetivo

Registrar a validação visual e funcional da área principal **Ocorrências**, acessada pelo menu lateral na tela `scrDashboard`.

## Estrutura validada

- `ctnOcorrenciasPrincipal`
- `lblOcorrenciasTitulo`
- `lblOcorrenciasResumo`
- `ctnOcorrenciasAcoes`
- `btnOcorrenciasNovaOcorrencia`
- `btnOcorrenciasAtualizar`
- `ctnOcorrenciasLista`
- `lblOcorrenciasListaTitulo`
- `galOcorrenciasPrincipal`
- `lblGalOcorrenciasPrincipalResumo`
- `lblOcorrenciasVazia`

## Navegação validada

Ao clicar no menu lateral **Ocorrências**, o conteúdo do Livro do Plantão deixou de ser exibido e a área principal **Ocorrências** foi apresentada corretamente.

## Resumo validado

```powerfx
"Plantão: " & Coalesce(varPlantaoAtual.CodigoPlantao; "NÃO ENCONTRADO") &
" | Total de ocorrências: " &
CountRows(
    Filter(
        Ocorrencias;
        Plantao.Id = varPlantaoAtual.ID
    )
)
```

Resultado exibido:

```text
Plantão: PL-2026-06-08-DIA-BI | Total de ocorrências: 1
```

## Botão Nova Ocorrência

O botão **Nova Ocorrência** foi exibido visualmente e permanece com ação provisória por `Notify`, sem abrir formulário nesta etapa.

```powerfx
Notify(
    "O formulário de nova ocorrência será preparado em etapa posterior.";
    NotificationType.Information
)
```

## Botão Atualizar

O botão **Atualizar** foi validado funcionalmente, exibindo a mensagem de sucesso após atualização.

```powerfx
Refresh(Ocorrencias);;
Set(varPlantaoAtual; LookUp(Plantoes; CodigoPlantao = "PL-2026-06-08-DIA-BI"));;
Notify(
    "Ocorrências atualizadas.";
    NotificationType.Success
)
```

Mensagem exibida:

```text
Ocorrências atualizadas.
```

## Galeria principal validada

```powerfx
FirstN(
    Filter(
        Ocorrencias;
        Plantao.Id = varPlantaoAtual.ID
    );
    20
)
```

## Texto validado na galeria

```powerfx
Coalesce(ThisItem.NumeroOcorrencia; ThisItem.Title) & " | " &
Coalesce(ThisItem.TipoOcorrencia.Value; "Tipo não informado") & " | " &
Coalesce(ThisItem.StatusOcorrencia.Value; "Status não informado") & Char(10) &
"Local: " & Coalesce(ThisItem.LocalRegistro; "Local não informado") & Char(10) &
Left(Coalesce(ThisItem.Descricao; "Sem descrição registrada."); 120)
```

## Resultado visual validado

Registro fictício exibido:

```text
OCO-TESTE-001 | Alarme | Aberta
Local: 1UBD
Registro fictício de alarme para validação do cadastro de ocorrências.
```

## Conclusão

A área principal **Ocorrências** foi aprovada visualmente e funcionalmente com dados fictícios.

Próxima etapa sugerida: preparar a área principal **Pendências**, acessada pelo menu lateral.
