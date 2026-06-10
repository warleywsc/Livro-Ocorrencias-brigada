# V043 - Validação dos atalhos operacionais do Livro do Plantão

**Projeto:** Livro de Ocorrências Digital da Brigada de Incêndio
**Data:** 10/06/2026
**Responsável:** Warley da Silva Conceição
**Etapa:** Power Apps - Livro do Plantão

## Objetivo

Registrar a validação visual dos atalhos operacionais dentro da área **Livro do Plantão** na tela `scrDashboard`.

## Estrutura validada

- `ctnLivroPlantaoAtalhos`
- `lblLivroPlantaoAtalhosTitulo`
- `ctnLivroPlantaoAtalhosBotoes`
- `btnLivroPlantaoNovaOcorrencia`
- `btnLivroPlantaoNovaPendencia`
- `btnLivroPlantaoVerOcorrencias`
- `btnLivroPlantaoVerPendencias`

## Posição validada

O container de atalhos foi posicionado dentro de `ctnLivroPlantao`, abaixo do resumo do plantão e antes da área **Passagem de Serviço**.

## Atalhos exibidos

```text
Nova Ocorrência
Nova Pendência
Ver Ocorrências
Ver Pendências
```

## Ações provisórias configuradas

Os botões foram configurados inicialmente com mensagens informativas por `Notify`, sem abrir telas novas nesta etapa.

### Nova Ocorrência

```powerfx
Notify(
    "A tela de nova ocorrência será preparada em etapa posterior.";
    NotificationType.Information
)
```

### Nova Pendência

```powerfx
Notify(
    "A tela de nova pendência será preparada em etapa posterior.";
    NotificationType.Information
)
```

### Ver Ocorrências

```powerfx
Notify(
    "A tela completa de ocorrências será preparada em etapa posterior.";
    NotificationType.Information
)
```

### Ver Pendências

```powerfx
Notify(
    "A tela completa de pendências será preparada em etapa posterior.";
    NotificationType.Information
)
```

## Resultado visual validado

A área **Atalhos Operacionais** apareceu corretamente no Livro do Plantão, com os quatro botões alinhados horizontalmente e seguindo o padrão visual já aplicado no app.

## Conclusão

Os atalhos operacionais do Livro do Plantão foram aprovados visualmente com ações provisórias.

Próxima etapa sugerida: preparar a área principal **Ocorrências** acessada pelo menu lateral.
