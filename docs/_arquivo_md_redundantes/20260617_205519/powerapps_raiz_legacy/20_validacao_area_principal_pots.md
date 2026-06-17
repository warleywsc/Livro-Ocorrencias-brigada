# V046 - Validação da área principal POTS

**Projeto:** Livro de Ocorrências Digital da Brigada de Incêndio
**Data:** 10/06/2026
**Responsável:** Warley da Silva Conceição
**Etapa:** Power Apps - Área principal POTS

## Objetivo

Registrar a validação visual e funcional inicial da área principal **POTS**, acessada pelo menu lateral na tela `scrDashboard`.

## Estrutura validada

- `ctnPotsPrincipal`
- `lblPotsTitulo`
- `lblPotsResumo`
- `ctnPotsAcoes`
- `btnPotsRegistrarCiencia`
- `btnPotsAtualizar`
- `ctnPotsPainel`
- `lblPotsPainelTitulo`
- `lblPotsPainelResumo`
- `lblPotsStatusInicial`

## Navegação validada

Ao clicar no menu lateral **POTS**, a área principal **POTS** foi apresentada corretamente.

## Resumo validado

```powerfx
"Plantão: " & Coalesce(varPlantaoAtual.CodigoPlantao; "NÃO ENCONTRADO") &
" | Controle de POTs revisados e ciência da equipe"
```

Resultado exibido:

```text
Plantão: PL-2026-06-08-DIA-BI | Controle de POTs revisados e ciência da equipe
```

## Botão Registrar Ciência

O botão **Registrar Ciência** foi exibido visualmente e permanece com ação provisória por `Notify`, sem gravar dados nesta etapa.

```powerfx
Notify(
    "O registro de ciência dos POTs será preparado em etapa posterior.";
    NotificationType.Information
)
```

## Botão Atualizar

O botão **Atualizar** foi validado funcionalmente, exibindo a mensagem de sucesso.

```powerfx
Notify(
    "POTS atualizados.";
    NotificationType.Success
)
```

Mensagem validada:

```text
POTS atualizados.
```

## Painel principal validado

Título exibido:

```text
POTs Revisados e Ciência da Equipe
```

Texto informativo exibido:

```text
Esta área será usada para acompanhar os POTs revisados no plantão e registrar a ciência da equipe. A lista SharePoint específica será preparada em etapa posterior.
```

Status inicial exibido:

```text
Status inicial: estrutura visual criada com dados informativos provisórios.
```

## Conclusão

A área principal **POTS** foi aprovada visualmente e funcionalmente em estrutura inicial, com dados informativos provisórios.

Próxima etapa sugerida: preparar a área principal **Histórico**, acessada pelo menu lateral.
