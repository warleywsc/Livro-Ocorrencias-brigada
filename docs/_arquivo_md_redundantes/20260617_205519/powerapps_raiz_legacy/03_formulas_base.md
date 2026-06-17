# Fórmulas Base — Power Apps

## Observação

Este arquivo será preenchido conforme a implementação avançar.

## Variáveis previstas

```powerfx
Set(varUsuarioAtual, User());
Set(varPerfilUsuario, Blank());
Set(varPlantaoAtual, Blank());
Set(varUnidadeAtual, Blank());
Set(varStatusLivroAtual, Blank());
```

## Coleções previstas

```powerfx
ClearCollect(colMenuLateral,
    Table(
        {Titulo: "Dashboard", Tela: scrDashboardOperacional},
        {Titulo: "Livro do Plantão", Tela: scrRegistroPlantao},
        {Titulo: "Ocorrências", Tela: scrOcorrenciasPlantao},
        {Titulo: "Pendências", Tela: scrPendenciasOperacionais},
        {Titulo: "POTs e Ciência", Tela: scrPotsRevisadosCiencia},
        {Titulo: "Histórico", Tela: scrHistoricoRelatorio},
        {Titulo: "Relatórios", Tela: scrRelatoriosAdministracao},
        {Titulo: "Administração", Tela: scrAdministracao}
    )
);
```

## Próxima etapa

Validar as listas e os campos antes de transformar este arquivo em fórmulas definitivas.
