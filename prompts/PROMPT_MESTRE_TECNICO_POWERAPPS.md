# PROMPT_MESTRE_TECNICO_POWERAPPS

**Projeto:** Livro de Ocorrências Digital da Brigada de Incêndio  
**Responsável:** Warley da Silva Conceição  
**Versão do prompt:** 2026-06-10 — Power Apps validado até V049  
**Estado validado até:** V049 - registra validacao da area principal administracao  
**Repositório:** `https://github.com/warleywsc/Livro-Ocorrencias-brigada.git`  
**Repositório local:** `C:\Projetos\Livro-Ocorrencias-brigada`  
**Branch:** `main`  
**Site SharePoint oficial:** `https://etnweb.sharepoint.com/sites/BrigadaIncendio`  
**Ambiente Power Apps:** Eletronuclear (default)  
**App:** Livro de Ocorrências Digital da Brigada de Incêndio  
**Formato:** Tablet  
**Tela atual:** `scrDashboard`

---

## 1. Como usar este arquivo em um novo chat

No novo chat, anexar este arquivo e enviar:

```text
Use o arquivo anexado como memória operacional principal do projeto Livro de Ocorrências Digital da Brigada de Incêndio. Não execute nenhuma ação ainda. Apenas responda "proximo".
```

Depois, quando o assistente responder `proximo`, enviar:

```text
proximo
```

O assistente deve continuar a partir do estado registrado neste arquivo.

---

## 2. Regra principal de condução no novo chat

A condução deve seguir o padrão prático usado por Warley:

```text
Com o controle X selecionado, faça Y.
Propriedade: Z
Valor/Fórmula: ...
```

Evitar instruções genéricas. Sempre informar:

- controle que deve estar selecionado;
- onde inserir novo controle;
- nome exato do controle;
- propriedade exata;
- fórmula/valor completo;
- o que Warley deve validar no print.

Quando Warley enviar print, analisar visualmente antes de mandar a próxima etapa.

---

## 3. Regras permanentes

- Responder em PT-BR.
- Chamar o usuário de Warley.
- Tratar o nome oficial sempre como **Livro de Ocorrências Digital da Brigada de Incêndio**.
- Não usar nomes como: Brigada Digital, Fire Brigade, Logbook, Occurrences, Pendencies ou New Entry.
- Manter respostas diretas, com passos claros e curtos.
- Não avançar com dados reais sensíveis nos testes iniciais.
- Usar dados fictícios até validação visual e funcional.
- Quando houver comandos no terminal do VS Code, incluir relatório final e `Set-Clipboard`.
- Ao registrar avanços no repositório, usar blocos PowerShell curtos e seguros.
- Evitar here-strings longos `@'...'@`; preferir `$doc = @("linha", ...)`.
- Quando Warley disser apenas `proximo`, considerar que a etapa anterior foi validada, salvo se houver erro, print ou pendência.
- Não dizer que uma etapa está validada se houver corte, sobreposição, item vazio indevido ou desalinhamento visível.
- Sempre que a etapa for validada, gerar bloco PowerShell para registrar no GitHub antes de avançar.
- Não criar ou cobrar `footer` nesta fase. O app atual **não tem footer**, e isso está correto por enquanto.

---

## 4. Padrão de versionamento Git

Padrão adotado:

```text
V001 - descricao curta da etapa
V002 - descricao curta da etapa
V003 - descricao curta da etapa
```

O histórico foi reescrito e publicado no GitHub com o padrão `Vxxx - descrição`.

Último estado informado por Warley:

```text
STATUS_GIT=
## main...origin/main

ULTIMOS_COMMITS=
f01c7aa V049 - registra validacao da area principal administracao
8d9dad5 V048 - registra validacao da area principal relatorios
460f8f4 V047 - registra validacao da area principal historico
ed76ffc V046 - registra validacao da area principal POTS
06f9297 V045 - registra validacao da area principal pendencias
fce4f56 V044 - registra validacao da area principal ocorrencias
c19de1c V043 - registra validacao dos atalhos operacionais do Livro do Plantao
c986ae0 V042 - registra validacao da area pendencias do plantao
cf1f205 V041 - registra validacao da area ocorrencias do plantao
4a6c84e V040 - salva prompt mestre atualizado apos versionamento git
```

Ao salvar este prompt atualizado no repositório, usar:

```text
V050 - atualiza prompt mestre tecnico Power Apps ate V049
```

---

## 5. Objetivo do projeto

Criar um aplicativo institucional para registrar, consultar e consolidar o **Livro de Ocorrências Digital da Brigada de Incêndio**, com foco em:

- livro de plantão;
- passagem de serviço;
- equipe do plantão;
- substituições;
- ocorrências;
- pendências operacionais entre plantões;
- locais operacionais pesquisáveis;
- histórico e relatórios;
- administração de usuários, permissões e cadastros.

Implementação real:

- Power Apps;
- Microsoft Lists;
- SharePoint;
- Power Platform.

---

## 6. Estado atual em 10/06/2026

A fase estrutural SharePoint foi concluída, validada com dados fictícios e registrada no GitHub.

O app no Power Apps está em fase visual/funcional inicial. O menu lateral principal foi estruturado e as áreas iniciais foram validadas visualmente até V049.

Áreas validadas:

- Dashboard;
- Livro do Plantão;
- Ocorrências;
- Pendências;
- POTS;
- Histórico;
- Relatórios;
- Administração.

A tela ainda trabalha principalmente em `scrDashboard`, usando containers exibidos/ocultados por `varMenuSelecionado`.

---

## 7. Próxima etapa técnica recomendada no novo chat

Depois de anexar este prompt e enviar `proximo`, iniciar por:

```text
Preparar formulário visual inicial de Nova Ocorrência.
```

Objetivo da próxima etapa:

- transformar o botão provisório **Nova Ocorrência** em uma área/formulário visual inicial;
- ainda sem gravar dados com `Patch`;
- preparar apenas layout, campos e botões provisórios;
- permitir acesso pelo botão `btnOcorrenciasNovaOcorrencia`;
- opcionalmente permitir acesso também pelo botão `btnLivroPlantaoNovaOcorrencia`;
- validar visualmente antes de registrar no Git.

Versão provável da próxima validação:

```text
V051 - registra validacao do formulario visual inicial de nova ocorrencia
```

Observação: antes disso, se Warley pedir para registrar o prompt no GitHub, usar V050.

---

## 8. Site SharePoint oficial

Site oficial:

```text
https://etnweb.sharepoint.com/sites/BrigadaIncendio
```

Nome do site:

```text
Brigada de Incêndio
```

Este é o destino preferencial das listas do projeto. O site SGES anterior deve ser considerado legado/provisório.

---

## 9. PnP PowerShell

Foi tentado uso de PnP.PowerShell:

- PowerShell 7.6.2 instalado.
- PnP.PowerShell 3.2.0 instalado.
- `Connect-PnPOnline -Interactive` falhou por exigir ClientId/App Registration no Entra ID.
- Decisão: não avançar por PnP sem ClientId autorizado.
- Listas foram criadas manualmente no SharePoint.

---

## 10. MVP visual aprovado no Google Stitch

O MVP visual foi aprovado com 15 telas:

1. Login / Identificação do Usuário
2. Dashboard Operacional
3. Registro do Plantão
4. Equipe do Plantão
5. Conferência de Viaturas e Materiais
6. Inspeção de Rotina
7. Finalização do Livro do Plantão
8. Ocorrências do Plantão
9. Nova Ocorrência
10. Pendências Operacionais
11. Nova Pendência
12. POTs Revisados e Ciência
13. Histórico e Relatório
14. Relatórios e Administração
15. Administração

Regras visuais importantes:

- interface em português do Brasil;
- evitar variações entre telas;
- não reutilizar HTML exportado do Stitch como arquitetura final sem refatoração;
- header e sidebar já estão sendo padronizados visualmente no Power Apps;
- o footer continua previsto como componente futuro, mas não existe no app atual e não deve ser cobrado nas validações atuais.

---

## 11. Componentes obrigatórios previstos futuramente

Componentes previstos para implementação real/refatoração posterior:

- AppShell
- Header
- Sidebar
- Footer
- ShiftSummary
- StatusBadge
- ActionButtons
- Card
- SectionCard
- FilterBar
- TimelineCard
- FormSection

Componentes específicos recomendados:

- LocalSelector
- LeaderResponsibilityPanel
- OccurrenceResponsibilityPanel

Estado atual: ainda estamos usando containers e controles diretamente na tela `scrDashboard`, antes da componentização completa.

---

## 12. Listas SharePoint criadas e conectadas

Listas criadas no SharePoint e conectadas no Power Apps:

- `Usuarios`
- `Plantoes`
- `EquipePlantao`
- `LocaisOperacionais`
- `PendenciasOperacionais`
- `Ocorrencias`

Validação: as 6 listas aparecem no painel de dados do Power Apps.

---

## 13. Dados fictícios usados nas validações

### Plantão fictício

```text
Título: PL-2026-06-08-DIA-BI
CodigoPlantao: PL-2026-06-08-DIA-BI
DataPlantao: 08/06/2026
Turno: Dia
PlantaoExtra: Não
PostoServico: Brigada de Incêndio
StatusLivro: Em preenchimento
PassagemServico: Plantão fictício criado apenas para validação estrutural.
ResumoOperacional: Sem anormalidades reais. Registro criado apenas para teste.
LiderResponsavelAtual: Warley da Silva Conceição
```

### Equipe fictícia

```text
Líder Teste 01 | Líder | Brigada de Incêndio | Presente
Bombeiro Teste 01 | Bombeiro | Angra 1 | Presente
```

### Ocorrência fictícia

```text
Número: OCO-TESTE-001
Tipo: Alarme
Status: Aberta
Local: 1UBD
Descrição: Registro fictício de alarme para validação do cadastro de ocorrências.
```

### Pendência fictícia

```text
Número: PEN-TESTE-001
Status: Aberta
Local: Sala Operacional
Descrição: Pendência fictícia criada apenas para validar relacionamento com plantão e local operacional.
```

### Administração — contagens validadas

```text
Usuários cadastrados: 3
Plantões cadastrados: 1
Locais operacionais cadastrados: 4
Ocorrências cadastradas: 1
Pendências cadastradas: 1
```

---

## 14. App.OnStart atual

```powerfx
Set(varMenuSelecionado; "Dashboard");;
Set(varPlantaoAtual; LookUp(Plantoes; CodigoPlantao = "PL-2026-06-08-DIA-BI"))
```

Observação: separador local está como `;` e comandos encadeados com `;;`.

---

## 15. Navegação principal atual

Menu lateral validado:

```text
Dashboard
Livro do Plantão
Ocorrências
Pendências
POTS
Histórico
Relatórios
Administração
```

Botões e `OnSelect`:

```powerfx
btnMenuDashboard.OnSelect = Set(varMenuSelecionado; "Dashboard")
btnMenuLivroPlantao.OnSelect = Set(varMenuSelecionado; "Livro do Plantão")
btnMenuOcorrencias.OnSelect = Set(varMenuSelecionado; "Ocorrências")
btnMenuPendencias.OnSelect = Set(varMenuSelecionado; "Pendências")
btnMenuPots.OnSelect = Set(varMenuSelecionado; "POTS")
btnMenuHistorico.OnSelect = Set(varMenuSelecionado; "Histórico")
btnMenuRelatorios.OnSelect = Set(varMenuSelecionado; "Relatórios")
btnMenuAdministracao.OnSelect = Set(varMenuSelecionado; "Administração")
```

Padrão visual dos botões do menu:

```powerfx
Fill = If(varMenuSelecionado = "NOME_DO_MENU"; ColorValue("#0082BC"); ColorValue("#F3F4F6"))
Color = If(varMenuSelecionado = "NOME_DO_MENU"; Color.White; ColorValue("#1F2937"))
```

Substituir `NOME_DO_MENU` pelo texto exato do item.

---

## 16. Header validado

### `lblHeaderTitulo.Text`

```powerfx
"Livro de Ocorrências Digital da Brigada de Incêndio"
```

### `lblHeaderSubtitulo.Text`

```powerfx
If(
    varMenuSelecionado = "Dashboard";
    "Dashboard Operacional";
    varMenuSelecionado
) & " | Plantão: " & Coalesce(varPlantaoAtual.CodigoPlantao; "NÃO ENCONTRADO") &
" | Status: " & Coalesce(varPlantaoAtual.StatusLivro.Value; "Não informado")
```

Resultado esperado conforme menu:

```text
Dashboard Operacional | Plantão: PL-2026-06-08-DIA-BI | Status: Em preenchimento
Livro do Plantão | Plantão: PL-2026-06-08-DIA-BI | Status: Em preenchimento
Ocorrências | Plantão: PL-2026-06-08-DIA-BI | Status: Em preenchimento
Pendências | Plantão: PL-2026-06-08-DIA-BI | Status: Em preenchimento
POTS | Plantão: PL-2026-06-08-DIA-BI | Status: Em preenchimento
Histórico | Plantão: PL-2026-06-08-DIA-BI | Status: Em preenchimento
Relatórios | Plantão: PL-2026-06-08-DIA-BI | Status: Em preenchimento
Administração | Plantão: PL-2026-06-08-DIA-BI | Status: Em preenchimento
```

---

## 17. Estrutura visual atual validada da tela `scrDashboard`

Estrutura principal:

```text
scrDashboard
  ScreenContainer1
    HeaderContainer1
      ctnHeaderTextos
        lblHeaderTitulo
        lblHeaderSubtitulo
    BottomContainer1
      SidebarContainer1
        lblSidebarTitulo
        btnMenuDashboard
        btnMenuLivroPlantao
        btnMenuOcorrencias
        btnMenuPendencias
        btnMenuPots
        btnMenuHistorico
        btnMenuRelatorios
        btnMenuAdministracao
      MainContainer1
        ctnCardsDashboard
        ctnConteudoDashboard
        ctnLivroPlantao
        ctnOcorrenciasPrincipal
        ctnPendenciasPrincipal
        ctnPotsPrincipal
        ctnHistoricoPrincipal
        ctnRelatoriosPrincipal
        ctnAdministracaoPrincipal
```

Visibilidade padrão de cada área:

```powerfx
ctnCardsDashboard.Visible = varMenuSelecionado = "Dashboard"
ctnConteudoDashboard.Visible = varMenuSelecionado = "Dashboard"
ctnLivroPlantao.Visible = varMenuSelecionado = "Livro do Plantão"
ctnOcorrenciasPrincipal.Visible = varMenuSelecionado = "Ocorrências"
ctnPendenciasPrincipal.Visible = varMenuSelecionado = "Pendências"
ctnPotsPrincipal.Visible = varMenuSelecionado = "POTS"
ctnHistoricoPrincipal.Visible = varMenuSelecionado = "Histórico"
ctnRelatoriosPrincipal.Visible = varMenuSelecionado = "Relatórios"
ctnAdministracaoPrincipal.Visible = varMenuSelecionado = "Administração"
```

---

## 18. Dashboard validado

Cards validados:

- Plantão Atual
- Status do Livro
- Líder Responsável
- Pendências Abertas
- Ocorrências do Plantão

Valores validados:

```text
Plantão Atual: PL-2026-06-08-DIA-BI
Status do Livro: Em preenchimento
Líder Responsável: Warley da Silva Conceição
Pendências Abertas: 1
Ocorrências do Plantão: 1
```

Conteúdo inferior validado:

- Resumo Operacional
- Pendências em Aberto
- Últimas Ocorrências

Galerias do dashboard:

```text
galPendenciasAbertasDashboard
  lblGalPendenciaResumo

galUltimasOcorrenciasDashboard
  lblGalOcorrenciaResumo
```

---

## 19. Livro do Plantão validado

Estrutura validada:

```text
ctnLivroPlantao
  lblLivroPlantaoTitulo
  lblLivroPlantaoResumo
  ctnLivroPlantaoAtalhos
    lblLivroPlantaoAtalhosTitulo
    ctnLivroPlantaoAtalhosBotoes
      btnLivroPlantaoNovaOcorrencia
      btnLivroPlantaoNovaPendencia
      btnLivroPlantaoVerOcorrencias
      btnLivroPlantaoVerPendencias
  ctnLivroPlantaoPassagemServico
    lblLivroPlantaoPassagemTitulo
    lblLivroPlantaoPassagemTexto
  ctnLivroPlantaoEquipe
    lblLivroPlantaoEquipeTitulo
    galLivroPlantaoEquipe
      lblGalEquipeResumo
    lblLivroPlantaoEquipeVazia
  ctnLivroPlantaoOcorrencias
    lblLivroPlantaoOcorrenciasTitulo
    galLivroPlantaoOcorrencias
      lblGalLivroPlantaoOcorrenciaResumo
    lblLivroPlantaoOcorrenciasVazia
  ctnLivroPlantaoPendencias
    lblLivroPlantaoPendenciasTitulo
    galLivroPlantaoPendencias
      lblGalLivroPlantaoPendenciaResumo
    lblLivroPlantaoPendenciasVazia
```

`ctnLivroPlantao.LayoutOverflowY` validado:

```powerfx
LayoutOverflow.Scroll
```

Na interface PT-BR aparece como:

```text
Estouro Vertical = Rolar
```

Resultado visual validado no Livro do Plantão:

```text
Livro do Plantão
Plantão: PL-2026-06-08-DIA-BI | Status: Em preenchimento | Líder: Warley da Silva Conceição

Atalhos Operacionais
[Nova Ocorrência] [Nova Pendência] [Ver Ocorrências] [Ver Pendências]

Passagem de Serviço
Plantão fictício criado apenas para validação estrutural.

Equipe do Plantão
Líder Teste 01 | Líder | Brigada de Incêndio | Presente
Bombeiro Teste 01 | Bombeiro | Angra 1 | Presente

Ocorrências do Plantão
OCO-TESTE-001 | Alarme | Aberta
Registro fictício de alarme para validação do cadastro de ocorrências.

Pendências do Plantão
PEN-TESTE-001 | Status: Aberta
Pendência fictícia criada apenas para validar relacionamento com plantão e local operacional.
```

Ações provisórias dos botões de atalhos usam `Notify` e ainda não abrem telas/formulários reais.

---

## 20. Área principal Ocorrências validada

Estrutura validada:

```text
ctnOcorrenciasPrincipal
  lblOcorrenciasTitulo
  lblOcorrenciasResumo
  ctnOcorrenciasAcoes
    btnOcorrenciasNovaOcorrencia
    btnOcorrenciasAtualizar
  ctnOcorrenciasLista
    lblOcorrenciasListaTitulo
    galOcorrenciasPrincipal
      lblGalOcorrenciasPrincipalResumo
    lblOcorrenciasVazia
```

Resumo validado:

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

Botão Atualizar validado:

```powerfx
Refresh(Ocorrencias);;
Set(varPlantaoAtual; LookUp(Plantoes; CodigoPlantao = "PL-2026-06-08-DIA-BI"));;
Notify(
    "Ocorrências atualizadas.";
    NotificationType.Success
)
```

Galeria principal:

```powerfx
FirstN(
    Filter(
        Ocorrencias;
        Plantao.Id = varPlantaoAtual.ID
    );
    20
)
```

Texto da galeria:

```powerfx
Coalesce(ThisItem.NumeroOcorrencia; ThisItem.Title) & " | " &
Coalesce(ThisItem.TipoOcorrencia.Value; "Tipo não informado") & " | " &
Coalesce(ThisItem.StatusOcorrencia.Value; "Status não informado") & Char(10) &
"Local: " & Coalesce(ThisItem.LocalRegistro; "Local não informado") & Char(10) &
Left(Coalesce(ThisItem.Descricao; "Sem descrição registrada."); 120)
```

Resultado validado:

```text
Ocorrências
Plantão: PL-2026-06-08-DIA-BI | Total de ocorrências: 1
[Nova Ocorrência] [Atualizar]

Ocorrências do Plantão
OCO-TESTE-001 | Alarme | Aberta
Local: 1UBD
Registro fictício de alarme para validação do cadastro de ocorrências.
```

---

## 21. Área principal Pendências validada

Estrutura validada:

```text
ctnPendenciasPrincipal
  lblPendenciasTitulo
  lblPendenciasResumo
  ctnPendenciasAcoes
    btnPendenciasNovaPendencia
    btnPendenciasAtualizar
  ctnPendenciasLista
    lblPendenciasListaTitulo
    galPendenciasPrincipal
      lblGalPendenciasPrincipalResumo
    lblPendenciasVazia
```

Resumo validado:

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

Botão Atualizar validado:

```powerfx
Refresh(PendenciasOperacionais);;
Set(varPlantaoAtual; LookUp(Plantoes; CodigoPlantao = "PL-2026-06-08-DIA-BI"));;
Notify(
    "Pendências atualizadas.";
    NotificationType.Success
)
```

Galeria principal:

```powerfx
FirstN(
    Filter(
        PendenciasOperacionais;
        PlantaoOrigem.Id = varPlantaoAtual.ID
    );
    20
)
```

Texto da galeria:

```powerfx
Coalesce(ThisItem.NumeroPendencia; ThisItem.Title) & " | " &
"Status: " & Coalesce(ThisItem.StatusPendencia.Value; "Status não informado") & Char(10) &
"Local: " & Coalesce(ThisItem.LocalRegistro; "Local não informado") & Char(10) &
Left(Coalesce(ThisItem.Descricao; "Sem descrição registrada."); 120)
```

Resultado validado:

```text
Pendências
Plantão: PL-2026-06-08-DIA-BI | Total de pendências: 1
[Nova Pendência] [Atualizar]

Pendências do Plantão
PEN-TESTE-001 | Status: Aberta
Local: Sala Operacional
Pendência fictícia criada apenas para validar relacionamento com plantão e local operacional.
```

---

## 22. Área principal POTS validada

Estrutura validada:

```text
ctnPotsPrincipal
  lblPotsTitulo
  lblPotsResumo
  ctnPotsAcoes
    btnPotsRegistrarCiencia
    btnPotsAtualizar
  ctnPotsPainel
    lblPotsPainelTitulo
    lblPotsPainelResumo
    lblPotsStatusInicial
```

Botão Atualizar validado:

```powerfx
Notify(
    "POTS atualizados.";
    NotificationType.Success
)
```

Resultado validado:

```text
POTS
Plantão: PL-2026-06-08-DIA-BI | Controle de POTs revisados e ciência da equipe
[Registrar Ciência] [Atualizar]

POTs Revisados e Ciência da Equipe
Esta área será usada para acompanhar os POTs revisados no plantão e registrar a ciência da equipe. A lista SharePoint específica será preparada em etapa posterior.

Status inicial: estrutura visual criada com dados informativos provisórios.
```

Observação: ainda não há lista SharePoint específica para POTS.

---

## 23. Área principal Histórico validada

Estrutura validada:

```text
ctnHistoricoPrincipal
  lblHistoricoTitulo
  lblHistoricoResumo
  ctnHistoricoAcoes
    btnHistoricoAtualizar
    btnHistoricoGerarRelatorio
  ctnHistoricoPainel
    lblHistoricoPainelTitulo
    lblHistoricoPlantaoResumo
    lblHistoricoIndicadores
    lblHistoricoStatusInicial
```

Botão Atualizar validado:

```powerfx
Refresh(Plantoes);;
Refresh(EquipePlantao);;
Refresh(Ocorrencias);;
Refresh(PendenciasOperacionais);;
Set(varPlantaoAtual; LookUp(Plantoes; CodigoPlantao = "PL-2026-06-08-DIA-BI"));;
Notify(
    "Histórico atualizado.";
    NotificationType.Success
)
```

Resultado validado:

```text
Histórico
Plantão: PL-2026-06-08-DIA-BI | Status: Em preenchimento
[Atualizar] [Gerar Relatório]

Resumo Histórico do Plantão
Plantão: PL-2026-06-08-DIA-BI
Data: 08/06/2026 | Turno: Dia
Líder responsável: Warley da Silva Conceição

Equipe registrada: 2
Ocorrências registradas: 1
Pendências registradas: 1
Passagem de serviço registrada: Sim

Status inicial: painel histórico criado para consolidar os principais dados do plantão atual. Consultas por período e relatórios completos serão preparados em etapa posterior.
```

---

## 24. Área principal Relatórios validada

Estrutura validada:

```text
ctnRelatoriosPrincipal
  lblRelatoriosTitulo
  lblRelatoriosResumo
  ctnRelatoriosAcoes
    btnRelatoriosAtualizar
    btnRelatoriosGerarRelatorio
    btnRelatoriosExportar
  ctnRelatoriosPainel
    lblRelatoriosPainelTitulo
    lblRelatoriosResumoPlantao
    lblRelatoriosIndicadores
    lblRelatoriosStatusInicial
```

Botão Atualizar validado:

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

Resultado validado:

```text
Relatórios
Plantão: PL-2026-06-08-DIA-BI | Relatórios operacionais e consolidação inicial
[Atualizar] [Gerar Relatório] [Exportar]

Resumo para Relatório do Plantão
Plantão: PL-2026-06-08-DIA-BI
Status do livro: Em preenchimento
Líder responsável: Warley da Silva Conceição

Equipe registrada: 2
Ocorrências registradas: 1
Pendências registradas: 1
Livro pronto para relatório: Sim

Status inicial: painel de relatórios criado para consolidar os principais dados do plantão atual. Geração, exportação e filtros por período serão preparados em etapa posterior.
```

---

## 25. Área principal Administração validada

Estrutura validada:

```text
ctnAdministracaoPrincipal
  lblAdministracaoTitulo
  lblAdministracaoResumo
  ctnAdministracaoAcoes
    btnAdministracaoAtualizar
    btnAdministracaoGerenciarUsuarios
    btnAdministracaoValidarCadastros
  ctnAdministracaoPainel
    lblAdministracaoPainelTitulo
    lblAdministracaoIndicadores
    lblAdministracaoStatusInicial
```

Atenção: o botão de usuários foi renomeado corretamente para:

```text
btnAdministracaoGerenciarUsuarios
```

Botão Atualizar validado:

```powerfx
Refresh(Usuarios);;
Refresh(Plantoes);;
Refresh(EquipePlantao);;
Refresh(LocaisOperacionais);;
Refresh(Ocorrencias);;
Refresh(PendenciasOperacionais);;
Set(varPlantaoAtual; LookUp(Plantoes; CodigoPlantao = "PL-2026-06-08-DIA-BI"));;
Notify(
    "Administração atualizada.";
    NotificationType.Success
)
```

Resultado validado:

```text
Administração
Plantão: PL-2026-06-08-DIA-BI | Painel administrativo inicial
[Atualizar] [Gerenciar Usuários] [Validar Cadastros]

Painel Administrativo Inicial
Usuários cadastrados: 3
Plantões cadastrados: 1
Locais operacionais cadastrados: 4
Ocorrências cadastradas: 1
Pendências cadastradas: 1

Status inicial: painel administrativo criado para acompanhar cadastros, usuários e listas principais do aplicativo. Edição de usuários, permissões e cadastros será preparada em etapa posterior.
```

---

## 26. Padrão visual validado

Cores principais:

```text
Azul institucional: #0082BC
Azul de destaque de títulos: #0B5F8A
Fundo da tela: #F5F7FA
Fundo de botões inativos: #F3F4F6
Texto escuro: #1F2937
Texto secundário: #374151
Borda clara: #D6E4EC
Card claro: #F9FAFB
Verde institucional secundário: #357E76
```

Decisões visuais:

- títulos das áreas principais e cards devem ficar destacados;
- cards devem ter borda leve e recuo interno consistente;
- evitar centralização indevida;
- conteúdo institucional deve ficar alinhado à esquerda;
- evitar três rótulos separados dentro de galerias pequenas;
- preferir rótulo único com `Char(10)` quando a área for compacta;
- botões primários em `#0082BC`;
- botões secundários em `#F3F4F6` com texto `#1F2937`;
- botões verdes podem usar `#357E76` para ações específicas como Nova Pendência.

---

## 27. Cuidados no Power Apps

- Quando colar fórmula, colar na barra superior de fórmula, não no campo textual de propriedades.
- Se a fórmula aparecer na tela como texto, foi colada no local errado ou com aspas extras externas.
- Para campos de consulta do SharePoint, usar `.Id` para comparar com `ID` do item relacionado.
- Campos Choice geralmente usam `.Value`.
- Campos Pessoa podem exigir `.DisplayName`, `.Email` ou objeto de usuário conforme o controle.
- Se `ThisItem` der erro em rótulos de galeria, conferir se o rótulo está realmente dentro do template da galeria.
- Se a galeria pedir “Adicione um item do painel inserir ou conecte-se aos dados”, primeiro validar `Items = NomeDaLista` antes de aplicar filtros.
- Mensagem de vazio deve usar `CountRows(Filter(Lista; Relacionamento.Id = varPlantaoAtual.ID))`, não `CountRows(Galeria.AllItems)`, quando `Visible` da própria galeria interfere na contagem.
- Avisos amarelos de delegação/consulta continuam conhecidos e não bloqueiam validações visuais com dados fictícios.
- Antes de dados reais em volume, revisar delegação.
- Não tentar arrastar controles para dentro de containers; usar o botão `+` do próprio container sempre que possível.
- Em modo edição, para acionar botão/menu, usar `ALT + clique` ou executar no modo de exibição.
- Nome exato da propriedade de rolagem vertical em containers modernos: `LayoutOverflowY`.
- Valor validado para rolagem vertical: `LayoutOverflow.Scroll`.
- Na interface PT-BR, aparece como `Estouro Vertical = Rolar`.

---

## 28. Modelagem importante das listas

### Lista Usuarios

Colunas principais:

- Título
- Email
- UsuarioMicrosoft
- Matricula
- Funcao
- PerfilAcesso
- PostoServico
- Ativo
- Observacoes

Valores de `Funcao`:

- Líder
- Bombeiro
- Motorista
- Brigadista
- Apoio
- Supervisor
- Administrador
- Outro

Valores de `PerfilAcesso`:

- Leitura
- Operador
- Lider
- Supervisor
- Administrador

### Posto de Serviço

Usar sempre:

```text
Posto de Serviço
```

Nome técnico da coluna:

```text
PostoServico
```

Valores oficiais:

- Angra 1
- Angra 2
- Angra 3
- Brigada de Incêndio

### Lista Plantoes

Campos centrais:

- CodigoPlantao
- DataPlantao
- Turno
- PlantaoExtra
- PostoServico
- StatusLivro
- PassagemServico
- ResumoOperacional
- LiderEscalado
- LiderResponsavelAtual
- HouveSubstituicaoLider
- LiderSubstituido
- MotivoSubstituicaoLider
- DataHoraAssuncaoLider
- ObservacoesSubstituicaoLider

Regra central:

```text
O livro pertence ao plantão, não à pessoa.
```

Se houver substituição de líder dentro do mesmo plantão, continua o mesmo livro; muda `LiderResponsavelAtual`.

### Lista EquipePlantao

Campos centrais:

- Plantao
- Integrante
- NomeIntegrante
- FuncaoNoPlantao
- PostoServico
- Presenca
- TipoVinculoPlantao
- MotivoSubstituicao
- SubstituiQuem
- HorarioInicioAtuacao
- HorarioFimAtuacao
- AtuacaoExtra
- Observacoes

### Lista Ocorrencias

Campos centrais:

- Título
- Plantao
- NumeroOcorrencia
- DataHoraOcorrencia
- TipoOcorrencia
- PostoServico
- LocalOperacional
- ZonaRegistro
- LocalRegistro
- AreaRegistro
- ElevacaoRegistro
- ComplementoLocal
- Gravidade
- Descricao
- AcoesTomadas
- Envolvidos
- StatusOcorrencia
- GeraPendencia
- PendenciaGerada
- LiderResponsavelNoMomento
- RegistradoPor
- DataRegistro
- RegistroPosteriorPorTerceiro
- MotivoRegistroPosterior
- InformadoPor
- ResponsavelAcompanhamentoOcorrencia
- Observacoes

### Lista PendenciasOperacionais

Campos centrais:

- Título
- NumeroPendencia
- PlantaoOrigem
- OrigemPendencia
- Descricao
- PostoServico
- LocalOperacional
- PendenciaComLocalEspecifico
- ZonaRegistro
- LocalRegistro
- AreaRegistro
- ElevacaoRegistro
- ComplementoLocal
- Prioridade
- StatusPendencia
- ResponsavelAcompanhamento
- Prazo
- DataAbertura
- DataConclusao
- Conclusao
- ConcluidoPor
- Observacoes

### Lista LocaisOperacionais

URL validada:

```text
/sites/BrigadaIncendio/Lists/LocaisOperacionais/AllItems.aspx
```

Campos centrais:

- Título
- CodigoLocalOperacional
- PostoServico
- Zona
- Local
- Area
- Elevacao
- LocalArea
- Complemento
- DescricaoReferencia
- StatusCadastro
- FonteCadastro
- Ativo
- ValidadoPor
- DataValidacao
- Observacoes

---

## 29. Próxima condução esperada no novo chat

Depois de o assistente responder apenas `proximo` e Warley enviar `proximo`, iniciar com orientação prática para criar o formulário visual inicial de Nova Ocorrência.

Primeira decisão recomendada:

- criar novo container dentro de `MainContainer1` chamado `ctnNovaOcorrenciaPrincipal`; ou
- usar `ctnOcorrenciasPrincipal` com subárea/formulário condicional.

Recomendação para a próxima etapa:

```text
Criar `ctnNovaOcorrenciaPrincipal` no mesmo nível das áreas principais.
Exibir quando `varMenuSelecionado = "Nova Ocorrência"`.
Alterar `btnOcorrenciasNovaOcorrencia.OnSelect` para `Set(varMenuSelecionado; "Nova Ocorrência")`.
Criar botão Voltar para Ocorrências com `Set(varMenuSelecionado; "Ocorrências")`.
Ainda não usar Patch.
```

Versão sugerida após validação visual:

```text
V051 - registra validacao do formulario visual inicial de nova ocorrencia
```

Antes dessa etapa, registrar este prompt atualizado como V050, caso Warley ainda não tenha registrado.

---

## 30. Comando de retomada

Ao iniciar novo chat com este arquivo anexado, a resposta esperada do assistente deve ser apenas:

```text
proximo
```

Depois Warley enviará:

```text
proximo
```

E o assistente deverá começar pela próxima etapa técnica registrada neste prompt.

Não registrar nova etapa no GitHub antes de Warley validar visualmente, salvo se ele pedir explicitamente.
