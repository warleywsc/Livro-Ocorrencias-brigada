# PROMPT_MESTRE_TECNICO_POWERAPPS

**Projeto:** Livro de Ocorrências Digital da Brigada de Incêndio  
**Responsável:** Warley da Silva Conceição  
**Versão do prompt:** 2026-06-15 — Power Apps validado e redirecionado até V066  
**Estado validado até:** V066 - registra decisão do fluxo contínuo do Livro do Plantão  
**Próxima etapa:** V067 - Preparar layout base do Livro do Plantão em fluxo contínuo  
**Repositório GitHub:** `https://github.com/warleywsc/Livro-Ocorrencias-brigada.git`  
**Repositório local:** `C:\Projetos\Livro-Ocorrencias-brigada`  
**Branch:** `main`  
**Site SharePoint oficial:** `https://etnweb.sharepoint.com/sites/BrigadaIncendio`  
**Ambiente Power Apps:** Eletronuclear (default)  
**App:** Livro de Ocorrências Digital da Brigada de Incêndio  
**Formato:** Tablet  
**Tela atual:** `scrDashboard`  

---

## 1. Como usar este arquivo em um novo chat

No novo chat, anexar este arquivo e enviar exatamente:

```text
Use o arquivo anexado como memória operacional principal do projeto Livro de Ocorrências Digital da Brigada de Incêndio. Não execute nenhuma ação ainda. Apenas responda "proximo".
```

Depois, quando o assistente responder `proximo`, enviar:

```text
proximo
```

A partir daí, o assistente deve continuar pela próxima etapa registrada neste prompt:

```text
V067 - Preparar layout base do Livro do Plantão em fluxo contínuo.
```

---

## 2. Regra principal de condução

A condução deve seguir o padrão prático usado por Warley:

```text
Com o controle X selecionado, faça Y.
Propriedade: Z
Valor/Fórmula: ...
```

Sempre informar:

- controle que deve estar selecionado;
- onde inserir novo controle;
- nome exato do controle;
- propriedade exata;
- fórmula/valor completo;
- o que Warley deve validar no print.

Quando Warley enviar print, analisar visualmente antes de mandar a próxima etapa.

Não avançar com instruções longas demais quando a etapa depender de validação visual no Power Apps.

---

## 3. Regras permanentes

- Responder em PT-BR.
- Chamar o usuário de Warley.
- Tratar o nome oficial sempre como **Livro de Ocorrências Digital da Brigada de Incêndio**.
- Não usar nomes como: Brigada Digital, Fire Brigade, Logbook, Occurrences, Pendencies ou New Entry.
- Manter respostas diretas, com passos claros e curtos.
- Priorizar funcionalidade e aceitação operacional antes de refinamento visual.
- Não avançar com dados reais sensíveis nos testes iniciais.
- Usar dados fictícios até validação visual e funcional.
- Quando houver comandos no terminal do VS Code, incluir relatório final e `Set-Clipboard`.
- Ao registrar avanços no repositório, usar blocos PowerShell curtos e seguros.
- Em blocos PowerShell, preferir envolver o script em `& { ... }` para evitar erro de `else` separado no terminal interativo.
- Não usar `exit` nos blocos do projeto, pois ele pode fechar o terminal integrado do VS Code.
- Se precisar interromper um bloco, usar `return` dentro de `& { ... }`.
- Não usar `Resolve-Path` para arquivo que ainda será criado; usar caminho absoluto ou `Join-Path` e gravar com `[System.IO.File]::WriteAllText($path, ...)`.
- Evitar here-strings longos quando houver risco de codificação; se necessário, usar UTF-8 sem BOM via `.NET`.
- Quando Warley disser apenas `proximo`, considerar que a etapa anterior foi validada, salvo se houver erro, print ou pendência.
- Não dizer que uma etapa está validada se houver corte, sobreposição, item vazio indevido ou desalinhamento visível.
- Sempre que a etapa for validada, gerar bloco PowerShell para registrar no GitHub antes de avançar.
- Não criar ou cobrar `footer` nesta fase. O app atual **não tem footer**, e isso está correto por enquanto.

---

## 4. Padrão de versionamento Git

Padrão adotado:

```text
V001 - descrição curta da etapa
V002 - descrição curta da etapa
V003 - descrição curta da etapa
```

O histórico foi reescrito e publicado no GitHub com o padrão `Vxxx - descrição`.

### Últimos estados/commits informados por Warley

```text
7a196c4 corrige codificacao do controle do projeto
1a695a2 V066 - registra decisao do fluxo continuo do Livro do Plantao
```

Estado mais recente informado:

```text
PENDENCIAS=NAO
MOTIVO=V066 registra decisao do fluxo continuo do Livro do Plantao

STATUS_GIT=

ULTIMO_COMMIT=
1a695a2 V066 - registra decisao do fluxo continuo do Livro do Plantao

ARQUIVOS_ATUALIZADOS=
docs/00_controle_do_projeto.md
docs/powerapps/30_decisao_fluxo_continuo_livro_plantao.md

PROXIMA_ETAPA=V067 - Preparar layout base do Livro do Plantao em fluxo continuo
```

### Observação sobre V066

A V066 é uma decisão de redirecionamento de experiência de uso. Ela não invalida o que foi construído; muda o foco operacional do preenchimento para o **Livro do Plantão em fluxo contínuo**.

---

## 5. Objetivo do projeto

Criar um aplicativo institucional para registrar, consultar e consolidar o **Livro de Ocorrências Digital da Brigada de Incêndio**, com foco em:

- livro de plantão;
- passagem de serviço;
- equipe do plantão;
- substituições;
- conferência de viaturas e materiais;
- inspeção de rotina;
- POTS revisados;
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

## 6. Decisão estratégica V066 — Fluxo contínuo do Livro do Plantão

Após conversa de Warley com analista de sistemas, foi identificado um possível problema de aceitação operacional: o Líder de Equipe está acostumado a preencher o livro de forma contínua, em sequência, sem depender de muitos cliques, botões, modais ou navegação entre várias telas.

Warley concordou com o analista. A partir da V066, o projeto deve priorizar:

```text
Livro do Plantão como tela principal de preenchimento diário e contínuo.
```

A experiência principal deve ser:

> O líder abre o plantão, rola a tela e preenche o livro inteiro em sequência, como já faz no modelo atual. O sistema salva os dados estruturados por trás, mas sem obrigar o usuário a navegar por várias telas durante o preenchimento.

### Estrutura desejada do fluxo contínuo

A tela `Livro do Plantão` deve conter, em uma tela única e rolável:

1. Cabeçalho do Plantão.
2. Recebimento do Serviço.
3. Equipe do Plantão.
4. Conferência de Viaturas e Materiais.
5. Inspeção de Rotina.
6. POTS Revisados.
7. Ocorrências do Plantão.
8. Pendências Operacionais.
9. Revisão e Finalização.

### Navegação por teclado

Requisito incluído por Warley:

- TAB avança para o próximo campo.
- SHIFT + TAB retorna ao campo anterior.
- A ordem de tabulação deve seguir a ordem operacional do livro.
- O uso do mouse deve ser opcional sempre que possível.
- Botões principais devem ficar no final das seções ou no final do fluxo.

### Novo papel das áreas do app

```text
Livro do Plantão = local principal de preenchimento diário.
Ocorrências = consulta, filtro, detalhe, auditoria e acompanhamento.
Pendências = consulta, acompanhamento, conclusão e controle.
POTS = área auxiliar.
Histórico = área auxiliar.
Relatórios = área auxiliar.
Administração = área auxiliar.
```

### Reaproveitamento obrigatório

Não apagar o que já foi criado e validado. Reaproveitar:

- Header atual.
- Menu lateral atual.
- Estrutura da tela `scrDashboard`.
- Container `ctnLivroPlantao`.
- Área `ctnOcorrenciasPrincipal` como consulta/filtro/detalhe/auditoria.
- Área `ctnPendenciasPrincipal` como consulta/acompanhamento/conclusão.
- Modais de detalhe de Ocorrências e Pendências.
- Funcionalidades de salvar ocorrência, encerrar ocorrência, gerar pendência, criar pendência manual e concluir pendência.
- Listas SharePoint já criadas.

### Documento criado na V066

```text
docs/powerapps/30_decisao_fluxo_continuo_livro_plantao.md
```

---

## 7. Próxima etapa técnica recomendada no novo chat

Depois de anexar este prompt e enviar `proximo`, iniciar por:

```text
V067 - Preparar layout base do Livro do Plantão em fluxo contínuo.
```

Objetivo da V067:

- reaproveitar `ctnLivroPlantao`;
- transformar a área do Livro do Plantão em base de preenchimento contínuo;
- manter Header, Sidebar e demais áreas já existentes;
- criar uma estrutura visual inicial de seções contínuas;
- ainda não gravar dados com `Patch` nessa primeira etapa;
- ainda não apagar os atalhos existentes sem necessidade;
- se possível, manter os controles antigos temporariamente ocultos ou deslocados até validação;
- validar visualmente antes de registrar no Git.

### Estrutura inicial sugerida para V067

Dentro de `ctnLivroPlantao`, preparar um container vertical rolável com seções abertas:

```text
ctnLivroPlantao
  lblLivroPlantaoTitulo
  lblLivroPlantaoResumo
  ctnLivroPlantaoFluxoContinuo
    ctnLivroSecaoCabecalho
    ctnLivroSecaoRecebimentoServico
    ctnLivroSecaoEquipe
    ctnLivroSecaoViaturasMateriais
    ctnLivroSecaoInspecaoRotina
    ctnLivroSecaoPotsRevisados
    ctnLivroSecaoOcorrenciasPlantao
    ctnLivroSecaoPendenciasOperacionais
    ctnLivroSecaoRevisaoFinalizacao
```

### Versão provável após validação visual

```text
V067 - registra layout base do Livro do Plantao em fluxo continuo
```

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
14. Relatórios
15. Administração

Regras visuais importantes:

- interface em português do Brasil;
- evitar variações entre telas;
- não reutilizar HTML exportado do Stitch como arquitetura final sem refatoração;
- header e sidebar já estão padronizados visualmente no Power Apps;
- o footer continua previsto como componente futuro, mas não existe no app atual e não deve ser cobrado nas validações atuais;
- após V066, o MVP visual deve ser reinterpretado para favorecer preenchimento contínuo no Livro do Plantão.

---

## 11. Componentes previstos futuramente

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

---

## 14. App.OnStart atual

Versão base atualizada durante a fase de Nova Ocorrência:

```powerfx
Set(varMenuSelecionado; "Dashboard");;
Set(varPlantaoAtual; LookUp(Plantoes; CodigoPlantao = "PL-2026-06-08-DIA-BI"));;
Set(varNovaOcorrenciaHoraPadrao; Text(Now(); "hh:mm"));;
Set(varErroHoraNovaOcorrencia; false)
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

---

## 17. Estrutura visual atual da tela `scrDashboard`

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

Valores validados inicialmente:

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

## 19. Livro do Plantão antes da decisão V066

Estrutura validada antes do redirecionamento:

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

Após V066, esta área deve ser reaproveitada e transformada no fluxo contínuo.

---

## 20. Área principal Ocorrências — estado validado e papel após V066

Antes da V066, a área `ctnOcorrenciasPrincipal` foi validada como área principal de ocorrências. Após V066, ela continua existindo, mas seu papel principal passa a ser:

```text
consulta, filtro, detalhe, auditoria e acompanhamento.
```

Estrutura validada:

```text
ctnOcorrenciasPrincipal
  lblOcorrenciasTitulo
  lblOcorrenciasResumo
  ctnOcorrenciasAcoes
    btnOcorrenciasNovaOcorrencia
    btnOcorrenciasAtualizar
  ctnOcorrenciasFiltros
  ctnOcorrenciasLista
    lblOcorrenciasListaTitulo
    galOcorrenciasPrincipal
      lblGalOcorrenciasPrincipalResumo
      btnGalOcorrenciasDetalhe
    lblOcorrenciasVazia
```

Funcionalidades validadas:

- lista de ocorrências do plantão;
- atualização;
- filtros;
- salvar nova ocorrência;
- destacar ocorrência recém-salva;
- modal de detalhe da ocorrência;
- encerrar ocorrência com exigência de ações tomadas;
- gerar pendência a partir da ocorrência.

---

## 21. Área principal Pendências — estado validado e papel após V066

Antes da V066, a área `ctnPendenciasPrincipal` foi validada como área principal de pendências. Após V066, ela continua existindo, mas seu papel principal passa a ser:

```text
consulta, acompanhamento, conclusão e controle.
```

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
      btnGalPendenciasDetalhe
    lblPendenciasVazia
```

Funcionalidades validadas:

- lista de pendências;
- atualização;
- modal de detalhe da pendência;
- concluir pendência com exigência de texto de solução/conclusão;
- criar pendência manual por modal;
- destacar pendência recém-criada.

Observação: a V066 foi registrada depois de a criação de pendência manual ter sido testada funcionalmente, mas antes de uma validação final visual ampla dessa área.

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

---

## 26. Estado validado das versões V050 a V066

Resumo operacional do avanço após o prompt V050 anterior:

```text
V050 - atualiza prompt mestre tecnico Power Apps ate V049
V051 - formulario visual inicial de Nova Ocorrencia validado
V052 - validacao de campos obrigatorios da Nova Ocorrencia validada
V053/V054/V055 - fluxo de Patch, lista e detalhe evoluido e validado ao longo do processo
V056 - salvar Nova Ocorrencia atualiza lista e destaca/mostra ocorrencia recem-salva
V057 - detalhe de Ocorrencia selecionada validado; depois evoluiu para modal
V058 - filtros de Ocorrencias validados funcional e visualmente, preservando contraste dos suspensos
V059 - encerramento de Ocorrencia validado funcionalmente
V060 - encerramento exige ações tomadas e registra histórico no texto
V061 - gerar Pendencia a partir de Ocorrencia validado
V062 - painel/detalhe de Pendencia selecionada validado funcionalmente
V063 - concluir Pendencia selecionada validado
V064 - modal de detalhe da Ocorrencia validado
V065 - modal de detalhe da Pendencia validado
V066 - registra decisao do fluxo continuo do Livro do Plantao
```

---

## 27. Código completo atual do botão Salvar Ocorrência

Este código foi validado e deve ser preservado como referência. Não substituir sem necessidade.

```powerfx
If(
    IsBlank(ddNovaOcorrenciaTipo.Selected.Value);
    Notify(
        "Informe o tipo da ocorrência.";
        NotificationType.Error
    );

    IsBlank(dtpNovaOcorrenciaData.SelectedDate);
    Notify(
        "Informe a data da ocorrência.";
        NotificationType.Error
    );

    IsBlank(Trim(txtNovaOcorrenciaHora.Text)) Or !IsMatch(Trim(txtNovaOcorrenciaHora.Text); "^([0-1][0-9]|2[0-3]):[0-5][0-9]$");
    Set(varErroHoraNovaOcorrencia; true);;
    Set(varNovaOcorrenciaHoraPadrao; "");;
    Reset(txtNovaOcorrenciaHora);;
    SetFocus(txtNovaOcorrenciaHora);;
    Notify(
        "Informe a hora da ocorrência no formato HH:MM.";
        NotificationType.Error
    );

    IsBlank(ddNovaOcorrenciaPostoServico.Selected.Value);
    Notify(
        "Informe o posto de serviço.";
        NotificationType.Error
    );

    IsBlank(ddNovaOcorrenciaGravidade.Selected.Value);
    Notify(
        "Informe a gravidade da ocorrência.";
        NotificationType.Error
    );

    IsBlank(Trim(txtNovaOcorrenciaLocalRegistro.Text));
    SetFocus(txtNovaOcorrenciaLocalRegistro);;
    Notify(
        "Informe o local do registro.";
        NotificationType.Error
    );

    IsBlank(ddNovaOcorrenciaStatus.Selected.Value);
    Notify(
        "Informe o status da ocorrência.";
        NotificationType.Error
    );

    IsBlank(Trim(txtNovaOcorrenciaDescricao.Text));
    SetFocus(txtNovaOcorrenciaDescricao);;
    Notify(
        "Informe a descrição da ocorrência.";
        NotificationType.Error
    );

    Set(varErroHoraNovaOcorrencia; false);;

    Set(
        varNumeroOcorrenciaTemporario;
        "OCO-PENDENTE-" &
        Upper(
            Left(
                Substitute(
                    Text(GUID());
                    "-";
                    ""
                );
                8
            )
        )
    );;

    Set(
        varDataHoraOcorrenciaTeste;
        DateAdd(
            dtpNovaOcorrenciaData.SelectedDate;
            Value(Left(Trim(txtNovaOcorrenciaHora.Text); 2)) * 60 +
            Value(Right(Trim(txtNovaOcorrenciaHora.Text); 2));
            TimeUnit.Minutes
        )
    );;

    Set(
        varOcorrenciaSalva;
        Patch(
            Ocorrencias;
            Defaults(Ocorrencias);
            {
                Title: varNumeroOcorrenciaTemporario;
                NumeroOcorrencia: varNumeroOcorrenciaTemporario;
                Plantao: {
                    '@odata.type': "#Microsoft.Azure.Connectors.SharePoint.SPListExpandedReference";
                    Id: varPlantaoAtual.ID;
                    Value: varPlantaoAtual.Title
                };
                DataHoraOcorrencia: varDataHoraOcorrenciaTeste;
                TipoOcorrencia: {
                    Value: ddNovaOcorrenciaTipo.Selected.Value
                };
                PostoServico: {
                    Value: ddNovaOcorrenciaPostoServico.Selected.Value
                };
                LocalRegistro: Trim(txtNovaOcorrenciaLocalRegistro.Text);
                Gravidade: {
                    Value: ddNovaOcorrenciaGravidade.Selected.Value
                };
                StatusOcorrencia: {
                    Value: ddNovaOcorrenciaStatus.Selected.Value
                };
                Descricao: Trim(txtNovaOcorrenciaDescricao.Text);
                AcoesTomadas: Trim(txtNovaOcorrenciaAcoesTomadas.Text);
                LiderResponsavelNoMomento: varPlantaoAtual.LiderResponsavelAtual;
                RegistradoPor: {
                    '@odata.type': "#Microsoft.Azure.Connectors.SharePoint.SPListExpandedUser";
                    Claims: "i:0#.f|membership|" & Lower(User().Email);
                    DisplayName: User().FullName;
                    Email: User().Email;
                    Department: "";
                    JobTitle: "";
                    Picture: ""
                };
                DataRegistro: Now();
                GeraPendencia: false
            }
        )
    );;

    Set(
        varNumeroOcorrenciaDefinitivo;
        "OCO-" & Text(varOcorrenciaSalva.ID; "000000")
    );;

    Set(
        varOcorrenciaSalva;
        Patch(
            Ocorrencias;
            varOcorrenciaSalva;
            {
                Title: varNumeroOcorrenciaDefinitivo;
                NumeroOcorrencia: varNumeroOcorrenciaDefinitivo
            }
        )
    );;

    Refresh(Ocorrencias);;

    Reset(ddNovaOcorrenciaTipo);;
    Reset(dtpNovaOcorrenciaData);;
    Set(varNovaOcorrenciaHoraPadrao; Text(Now(); "hh:mm"));;
    Reset(txtNovaOcorrenciaHora);;
    Reset(ddNovaOcorrenciaPostoServico);;
    Reset(ddNovaOcorrenciaGravidade);;
    Reset(txtNovaOcorrenciaLocalRegistro);;
    Reset(ddNovaOcorrenciaStatus);;
    Reset(txtNovaOcorrenciaDescricao);;
    Reset(txtNovaOcorrenciaAcoesTomadas);;

    Notify(
        "Ocorrência salva com sucesso: " & varNumeroOcorrenciaDefinitivo;
        NotificationType.Success
    );;

    Set(varMenuSelecionado; "Ocorrências")
)
```

---

## 28. Referências de Patch para SharePoint

### Lookup SharePoint

```powerfx
{
    '@odata.type': "#Microsoft.Azure.Connectors.SharePoint.SPListExpandedReference";
    Id: varPlantaoAtual.ID;
    Value: varPlantaoAtual.Title
}
```

### Pessoa SharePoint

```powerfx
{
    '@odata.type': "#Microsoft.Azure.Connectors.SharePoint.SPListExpandedUser";
    Claims: "i:0#.f|membership|" & Lower(User().Email);
    DisplayName: User().FullName;
    Email: User().Email;
    Department: "";
    JobTitle: "";
    Picture: ""
}
```

### Número definitivo de ocorrência

```powerfx
"OCO-" & Text(varOcorrenciaSalva.ID; "000000")
```

### Número definitivo de pendência

```powerfx
"PEN-" & Text(varPendenciaSalva.ID; "000000")
```

---

## 29. Nova Pendência Manual — estado antes da pausa

V066 estava em andamento antes da decisão de redirecionamento. O modal de Nova Pendência Manual foi criado e testado funcionalmente:

- abriu;
- salvou uma pendência manual `PEN-000004`;
- total de pendências subiu para 4;
- nova pendência apareceu selecionada/destacada.

Ainda havia ajustes visuais sugeridos antes de pausar:

- adicionar rótulos acima dos campos;
- corrigir cor de fonte do item selecionado nos suspensos.

Após a decisão V066, não priorizar esse refinamento imediatamente, salvo se Warley pedir. O foco passa a ser V067, layout contínuo do Livro do Plantão.

---

## 30. Padrão visual validado

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

## 31. Cuidados no Power Apps

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
- Em fluxo contínuo, revisar `TabIndex` e a ordem visual dos controles.
- Campos ocultos não devem atrapalhar a navegação por TAB.

---

## 32. Modelagem importante das listas

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

## 33. Condução esperada para V067

Ao começar a implementação, não tentar fazer tudo de uma vez. A V067 deve preparar apenas a base visual contínua.

### Objetivo prático da V067

- Selecionar `ctnLivroPlantao`.
- Garantir rolagem vertical.
- Criar ou reorganizar um container principal de fluxo contínuo.
- Criar cartões/seções vazias ou semi-preenchidas, sem Patch.
- Manter o menu lateral e header funcionando.
- Validar que o líder consegue ver a lógica de preenchimento de cima para baixo.

### Ordem de seções da V067

```text
1. Cabeçalho do Plantão
2. Recebimento do Serviço
3. Equipe do Plantão
4. Conferência de Viaturas e Materiais
5. Inspeção de Rotina
6. POTS Revisados
7. Ocorrências do Plantão
8. Pendências Operacionais
9. Revisão e Finalização
```

### Resultado esperado da V067

Uma tela única, rolável, com seções abertas, aproximando o Power Apps do modelo de preenchimento atual do livro.

### Não fazer na V067

- Não apagar áreas validadas.
- Não alterar listas SharePoint.
- Não mexer no Patch de Nova Ocorrência.
- Não criar relatório final.
- Não tentar salvar o livro inteiro ainda.
- Não refinar visualmente além do necessário para validar o conceito.

---

## 34. Comando de retomada

Ao iniciar novo chat com este arquivo anexado, a resposta esperada do assistente deve ser apenas:

```text
proximo
```

Depois Warley enviará:

```text
proximo
```

E o assistente deverá começar pela V067.

Não registrar nova etapa no GitHub antes de Warley validar visualmente, salvo se ele pedir explicitamente.
