# Prompt Mestre — Livro de Ocorrências Digital da Brigada de Incêndio

**Versão:** 2026-06-10 — Power Apps Dashboard e Livro do Plantão com Equipe validada  
**Projeto:** Livro de Ocorrências Digital da Brigada de Incêndio  
**Responsável:** Warley da Silva Conceição  
**Repositório:** `https://github.com/warleywsc/Livro-Ocorrencias-brigada.git`  
**Repositório local:** `C:\Projetos\Livro-Ocorrencias-brigada`  
**Branch:** `main`  
**Site SharePoint oficial:** `https://etnweb.sharepoint.com/sites/BrigadaIncendio`  
**Ambiente Power Apps:** Eletronuclear (default)

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

## 2. Regras permanentes de condução

- Responder em PT-BR.
- Chamar o usuário de Warley.
- Tratar o nome oficial sempre como **Livro de Ocorrências Digital da Brigada de Incêndio**.
- Não usar nomes como: Brigada Digital, Fire Brigade, Logbook, Occurrences, Pendencies ou New Entry.
- Priorizar respostas diretas, com passos claros e curtos.
- Quando houver comandos no terminal do VS Code, incluir sempre relatório final e `Set-Clipboard`, para Warley apenas colar o resultado no chat.
- Ao registrar avanços no repositório, usar blocos PowerShell curtos e seguros.
- Evitar here-strings longos `@'...'@`; preferir arrays `$doc = @("linha", ...)`.
- Quando pedir validação visual, dizer exatamente o que Warley deve conferir.
- Não avançar com dados reais sensíveis nos testes iniciais.
- Usar dados fictícios até validação visual e funcional.
- Registrar ajustes importantes em documentação/GitHub antes de avançar para nova fase.
- Quando Warley disser apenas `proximo`, considerar que a etapa anterior foi validada, salvo se ele trouxer erro, print ou pendência.
- Se Warley trouxer print, analisar o visual antes de orientar a próxima ação.
- Não dizer que uma etapa está validada se houver corte, sobreposição, item vazio indevido ou desalinhamento visível.
- Sempre que a etapa for validada, gerar bloco PowerShell para registrar no GitHub antes de avançar.
- Não criar ou cobrar `footer` nesta fase. O app atual **não tem footer**, e isso está correto por enquanto.

---

## 3. Objetivo do projeto

Criar um aplicativo institucional para registrar e consultar o **Livro de Ocorrências Digital da Brigada de Incêndio**, com foco em:

- livro de plantão;
- passagem de serviço;
- equipe do plantão;
- substituições;
- ocorrências;
- pendências operacionais entre plantões;
- locais operacionais pesquisáveis;
- histórico e relatórios;
- administração de usuários, permissões e cadastros.

A implementação real será em:

- Power Apps;
- Microsoft Lists;
- SharePoint;
- Power Platform.

---

## 4. Estado atual resumido em 10/06/2026

A fase estrutural SharePoint foi concluída, validada com dados fictícios e registrada no GitHub.

O app no Power Apps já está em fase visual/funcional inicial:

- App Canvas criado no ambiente **Eletronuclear (default)**.
- Nome do app: **Livro de Ocorrências Digital da Brigada de Incêndio**.
- Formato: **Tablet**.
- Template inicial: **Barra lateral**.
- Tela inicial renomeada para `scrDashboard`.
- Listas SharePoint conectadas.
- `App.OnStart` configurado.
- `varPlantaoAtual` carregando o plantão fictício.
- Dashboard inicial validado com header, menu lateral, cards e galerias.
- Tela/área **Livro do Plantão** criada dentro do mesmo `scrDashboard`, com troca visual controlada por `varMenuSelecionado`.
- Área **Passagem de Serviço** validada.
- Área **Equipe do Plantão** validada com galeria real da lista `EquipePlantao`.

Última etapa validada e registrada:

```text
e52e79a registra validacao da area equipe do plantao
```

Próxima etapa:

```text
Preparar area Ocorrencias do Plantao dentro da tela Livro do Plantao.
```

---

## 5. Repositório e histórico Git

### Repositório local

```text
C:\Projetos\Livro-Ocorrencias-brigada
```

### Repositório remoto

```text
https://github.com/warleywsc/Livro-Ocorrencias-brigada.git
```

### Branch

```text
main
```

### Estado Git ao atualizar este prompt

```text
## main...origin/main
```

### Commits recentes

```text
e52e79a registra validacao da area equipe do plantao
f8bc2e0 registra resposta visual do livro do plantao
e580dd6 registra validacao da galeria de ocorrencias
36c33eb registra validacao da galeria de pendencias
0c80219 registra validacao visual do conteudo do dashboard
dbd7ac7 registra validacao visual do menu lateral
f5de074 registra validacao visual do header do dashboard
cac0550 registra validacao visual dos cards do dashboard
cf69393 registra validacao inicial Power Apps
4424d31 salva prompt mestre atualizado para novo chat
```

### Arquivos Power Apps registrados no GitHub

```text
powerapps/01_fase_inicial_powerapps.md
powerapps/02_mapa_navegacao_powerapps.md
powerapps/03_componentes_reutilizaveis_powerapps.md
powerapps/04_prompt_mestre_tecnico_powerapps.md
powerapps/05_roteiro_conexao_listas_appshell.md
powerapps/06_validacao_inicial_powerapps.md
powerapps/07_validacao_visual_cards_dashboard.md
powerapps/08_validacao_visual_header_dashboard.md
powerapps/09_validacao_visual_sidebar_dashboard.md
powerapps/10_validacao_visual_conteudo_dashboard.md
powerapps/11_validacao_galeria_pendencias_dashboard.md
powerapps/12_validacao_galeria_ocorrencias_dashboard.md
powerapps/13_validacao_resposta_visual_livro_plantao.md
powerapps/14_validacao_area_equipe_livro_plantao.md
```

### Arquivos principais do projeto

```text
docs/00_controle_do_projeto.md
prompts/PROMPT_MESTRE_TECNICO_POWERAPPS.md
sharepoint/10_bloqueio_autenticacao_pnp.md
sharepoint/11_site_sharepoint_brigada_incendio.md
sharepoint/12_ajuste_posto_servico.md
sharepoint/13_ajuste_turno_plantao_extra.md
sharepoint/14_substituicoes_responsabilidade_autoria.md
sharepoint/15_lista_locais_operacionais.md
sharepoint/16_lista_pendencias_operacionais.md
sharepoint/17_lista_ocorrencias.md
sharepoint/18_fechamento_estrutural_listas_principais.md
sharepoint/19_roteiro_validacao_dados_ficticios.md
sharepoint/20_validacao_dados_ficticios.md
sharepoint/21_exibicoes_recomendadas_listas.md
scripts/03_testar_conexao_sharepoint_pnp.ps1
```

---

## 6. Site SharePoint oficial

Site oficial criado por Warley:

```text
https://etnweb.sharepoint.com/sites/BrigadaIncendio
```

Nome do site:

```text
Brigada de Incêndio
```

Este é o destino preferencial das listas do projeto. O site SGES anterior deve ser considerado legado/provisório.

---

## 7. PnP PowerShell

Foi tentado uso de PnP.PowerShell:

- PowerShell 7.6.2 instalado.
- PnP.PowerShell 3.2.0 instalado.
- `Connect-PnPOnline -Interactive` falhou por exigir ClientId/App Registration no Entra ID.
- Decisão: não avançar por PnP sem ClientId autorizado.
- Listas foram criadas manualmente no SharePoint.

---

## 8. MVP visual aprovado no Google Stitch

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

### Regras visuais importantes

- Interface em português do Brasil.
- Evitar variações entre telas.
- Não reutilizar HTML exportado do Stitch como arquitetura final sem refatoração.
- Header e sidebar já estão sendo padronizados visualmente no Power Apps.
- O footer continua previsto como componente futuro, mas **não existe no app atual** e não deve ser cobrado nas validações atuais.

---

## 9. Componentes obrigatórios previstos

Componentes obrigatórios na implementação real:

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

Observação: neste momento ainda estamos usando containers e controles diretamente na tela `scrDashboard`, antes da componentização completa.

---

## 10. Navegação principal atual

Menu lateral validado no Power Apps:

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

Decisão aplicada:

- A opção anteriormente prevista como `POTs e Ciência` passou a ser exibida no menu como **POTS**.
- Usar `POTS` também no valor da variável `varMenuSelecionado`.

Dashboard continua sendo a tela inicial.

---

## 11. Listas SharePoint criadas e conectadas

Listas criadas no SharePoint e conectadas no Power Apps:

- Usuarios
- Plantoes
- EquipePlantao
- LocaisOperacionais
- PendenciasOperacionais
- Ocorrencias

Validação no Power Apps: as 6 listas aparecem no painel de dados.

---

## 12. Lista Usuarios

Colunas:

- Título
- Email
- UsuarioMicrosoft
- Matricula
- Funcao
- PerfilAcesso
- PostoServico
- Ativo
- Observacoes

### Valores de Funcao

- Líder
- Bombeiro
- Motorista
- Brigadista
- Apoio
- Supervisor
- Administrador
- Outro

### Valores de PerfilAcesso

- Leitura
- Operador
- Lider
- Supervisor
- Administrador

Observação: o valor técnico usado foi `Lider` sem acento.

---

## 13. Posto de Serviço

Usar sempre o termo:

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

Regras:

- “Rotação de postos” é regra operacional, não valor de campo.
- Bombeiros rodam todos os postos, 1 em cada dia de serviço.
- Brigadistas ficam 1 em Angra 1 e 1 em Angra 2 em dias úteis/horário comercial.
- Líderes ficam apenas na Brigada de Incêndio.

---

## 14. Lista Plantoes

Colunas esperadas:

- Título
- CodigoPlantao
- DataPlantao
- Turno
- PlantaoExtra
- PostoServico
- StatusLivro
- PassagemServico
- ResumoOperacional
- DataAbertura
- DataFinalizacao
- FinalizadoPor
- JustificativaReabertura
- Observacoes
- LiderEscalado
- LiderResponsavelAtual
- HouveSubstituicaoLider
- LiderSubstituido
- MotivoSubstituicaoLider
- DataHoraAssuncaoLider
- ObservacoesSubstituicaoLider

Coluna antiga `LiderPlantao` foi considerada obsoleta. Usar:

- LiderEscalado
- LiderResponsavelAtual

### Valores de Turno

- Dia
- Noite
- Horário Comercial

### PlantaoExtra

Sim/Não, padrão Não.

### Regra central

O livro pertence ao plantão, não à pessoa.

Se houver substituição de líder dentro do mesmo plantão, continua o mesmo livro; muda `LiderResponsavelAtual`.

Se iniciar outro turno/plantão, deve existir outro livro.

---

## 15. Lista EquipePlantao

Colunas:

- Título
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

Campos de substituição de líder pertencem a `Plantoes`, não a `EquipePlantao`.

### Valores de Presenca

- Presente
- Ausente
- Dispensado durante o plantão

Não usar “Substituído” como valor de Presença.

### Valores de TipoVinculoPlantao

- Escalado
- Substituto
- Apoio eventual

### Valores de MotivoSubstituicao

- Não se aplica
- Falta
- Troca de serviço
- Dispensa durante o plantão
- Apoio operacional
- Necessidade operacional
- Outro

---

## 16. Substituições

Substituições são frequentes e devem ser modeladas corretamente:

- falta;
- troca de serviço;
- dispensa durante o serviço;
- substituição parcial;
- atuação extra/dobra.

Separar:

- presença;
- tipo de vínculo;
- motivo;
- quem foi substituído;
- horários;
- atuação extra.

---

## 17. Substituição de líder e edição do livro

Regra:

- Em princípio, um líder não deve editar livremente livro iniciado/assumido por outro líder.
- A edição é do `LiderResponsavelAtual`.
- Se outro líder assumir no meio do plantão, registrar transferência formal de responsabilidade.
- Supervisor e Administrador podem editar/finalizar conforme perfil.

Campos em `Plantoes`:

- LiderEscalado
- LiderResponsavelAtual
- HouveSubstituicaoLider
- LiderSubstituido
- MotivoSubstituicaoLider
- DataHoraAssuncaoLider
- ObservacoesSubstituicaoLider

Se substituto cobrir escala de outro líder e depois emendar sua própria escala normal:

- devem existir dois livros distintos;
- participação extra/dobra fica em `EquipePlantao` com `AtuacaoExtra = Sim`.

---

## 18. Ocorrências — responsabilidade e autoria

Ocorrências devem separar:

1. líder responsável atual pelo livro;
2. líder responsável no momento do fato;
3. quem registrou no sistema;
4. quem informou os dados;
5. quem acompanha atualmente.

Se ocorreu antes da substituição do líder:

- preservar `LiderResponsavelNoMomento` do líder que era responsável quando o fato ocorreu.
- líder substituto pode registrar depois, mas deve ficar claro quem registrou, quem informou e o motivo do registro posterior/por terceiro.

---

## 19. Lista LocaisOperacionais

Lista criada no SharePoint. URL correta validada:

```text
/sites/BrigadaIncendio/Lists/LocaisOperacionais/AllItems.aspx
```

Colunas:

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

Houve duplicidade de `Observacoes`, já identificada e corrigida.

---

## 20. PostoServico x LocalOperacional

Separação obrigatória:

### PostoServico

Local amplo/lotação:

- Angra 1
- Angra 2
- Angra 3
- Brigada de Incêndio

### LocalOperacional

Local detalhado do fato:

- Zona
- Local
- Área
- Elevação
- Complemento
- Referência

Registros de ocorrência, pendência e inspeção devem guardar snapshot textual do local:

- ZonaRegistro
- LocalRegistro
- AreaRegistro
- ElevacaoRegistro
- ComplementoLocal

---

## 21. Lista PendenciasOperacionais

Colunas:

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

A coluna padrão `Título` é usada como resumo curto da pendência. Não criar coluna `Titulo`.

Relacionamentos:

- `PlantaoOrigem` consulta `Plantoes`.
- `LocalOperacional` consulta `LocaisOperacionais`.

---

## 22. Lista Ocorrencias

Colunas:

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

A coluna padrão `Título` é usada como título curto da ocorrência. Não criar coluna `Titulo`.

Relacionamentos:

- `Plantao` consulta `Plantoes`.
- `LocalOperacional` consulta `LocaisOperacionais`.
- `PendenciaGerada` consulta `PendenciasOperacionais`.

---

## 23. Dados fictícios usados na validação

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

### Pendência fictícia

```text
Título: Pendência fictícia em local operacional
NumeroPendencia: PEN-TESTE-001
PlantaoOrigem: PL-2026-06-08-DIA-BI
OrigemPendencia: Manual
Descricao: Pendência fictícia criada apenas para validar relacionamento com plantão e local operacional.
PostoServico: Brigada de Incêndio
StatusPendencia: Aberta
```

### Ocorrência fictícia

```text
Título: Ocorrência fictícia de alarme
Plantao: PL-2026-06-08-DIA-BI
NumeroOcorrencia: OCO-TESTE-001
TipoOcorrencia: Alarme
Descricao: Registro fictício de alarme para validação do cadastro de ocorrências.
PostoServico: Angra 3
StatusOcorrencia: Aberta
GeraPendencia: Sim
PendenciaGerada: Pendência fictícia em local operacional
```

### Equipe fictícia

```text
Líder Teste 01 | Líder | Brigada de Incêndio | Presente
Bombeiro Teste 01 | Bombeiro | Angra 1 | Presente
```

---

## 24. Power Apps — estado atual

### App criado

Nome:

```text
Livro de Ocorrências Digital da Brigada de Incêndio
```

Formato:

```text
Tablet
```

Motivo:

- projeto principalmente desktop/notebook;
- melhor para menu lateral;
- melhor para dashboard;
- melhor para tabelas, relatórios e formulários longos.

Template inicial usado:

```text
Barra lateral
```

### Tela atual

`Screen1` foi renomeada para:

```text
scrDashboard
```

O app ainda trabalha principalmente nessa tela, usando containers exibidos/ocultados por `varMenuSelecionado`.

### Fontes de dados conectadas

- Usuarios
- Plantoes
- EquipePlantao
- LocaisOperacionais
- PendenciasOperacionais
- Ocorrencias

### App.OnStart atual

```powerfx
Set(varMenuSelecionado; "Dashboard");;
Set(varPlantaoAtual; LookUp(Plantoes; CodigoPlantao = "PL-2026-06-08-DIA-BI"))
```

Observação: separador local está como `;` e duplo comando com `;;`.

---

## 25. Estrutura visual atual do Power Apps

Árvore principal validada:

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
          ctnCardPlantaoAtual
          ctnCardStatusLivro
          ctnCardLiderResponsavel
          ctnCardPendenciasAbertas
          ctnCardOcorrenciasPlantao
        ctnConteudoDashboard
          ctnResumoOperacional
          ctnPendenciasDashboard
            galPendenciasAbertasDashboard
              lblGalPendenciaResumo
          ctnUltimasOcorrencias
            galUltimasOcorrenciasDashboard
              lblGalOcorrenciaResumo
        ctnLivroPlantao
          lblLivroPlantaoTitulo
          lblLivroPlantaoResumo
          ctnLivroPlantaoPassagemServico
            lblLivroPlantaoPassagemTitulo
            lblLivroPlantaoPassagemTexto
          ctnLivroPlantaoEquipe
            lblLivroPlantaoEquipeTitulo
            galLivroPlantaoEquipe
              lblGalEquipeResumo
            lblLivroPlantaoEquipeVazia
```

---

## 26. Header validado

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

Validação:

- No Dashboard, mostra `Dashboard Operacional | Plantão: PL-2026-06-08-DIA-BI | Status: Em preenchimento`.
- No Livro do Plantão, mostra `Livro do Plantão | Plantão: PL-2026-06-08-DIA-BI | Status: Em preenchimento`.
- Header foi aumentado e deixou de ficar cortado.

---

## 27. Sidebar validada

Título:

```text
Menu Operacional
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

Padrão visual dos botões:

### Fill

```powerfx
If(varMenuSelecionado = "NOME_DO_MENU"; ColorValue("#0082BC"); ColorValue("#F3F4F6"))
```

### Color

```powerfx
If(varMenuSelecionado = "NOME_DO_MENU"; Color.White; ColorValue("#1F2937"))
```

Substituir `NOME_DO_MENU` pelo texto exato do item.

---

## 28. Dashboard validado

### Visibilidade do Dashboard

`ctnCardsDashboard.Visible`:

```powerfx
varMenuSelecionado = "Dashboard"
```

`ctnConteudoDashboard.Visible`:

```powerfx
varMenuSelecionado = "Dashboard"
```

### Cards do Dashboard

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

### Fórmulas principais dos cards

#### Plantão Atual

```powerfx
Coalesce(varPlantaoAtual.CodigoPlantao; "NÃO ENCONTRADO")
```

#### Status do Livro

```powerfx
Coalesce(varPlantaoAtual.StatusLivro.Value; "Não informado")
```

#### Líder Responsável

```powerfx
Coalesce(varPlantaoAtual.LiderResponsavelAtual.DisplayName; "Não informado")
```

#### Pendências Abertas

```powerfx
CountRows(
    Filter(
        PendenciasOperacionais;
        PlantaoOrigem.Id = varPlantaoAtual.ID &&
        StatusPendencia.Value <> "Concluída" &&
        StatusPendencia.Value <> "Cancelada"
    )
)
```

#### Ocorrências do Plantão

```powerfx
CountRows(
    Filter(
        Ocorrencias;
        Plantao.Id = varPlantaoAtual.ID
    )
)
```

Observação: os avisos amarelos de delegação continuam conhecidos e não bloquearam as validações.

---

## 29. Conteúdo inferior do Dashboard validado

Áreas validadas:

- Resumo Operacional
- Pendências em Aberto
- Últimas Ocorrências

### Resumo Operacional

Texto validado:

```powerfx
Coalesce(varPlantaoAtual.ResumoOperacional; "Nenhum resumo operacional registrado até o momento.")
```

Resultado exibido:

```text
Sem anormalidades reais. Registro criado apenas para teste.
```

### Galeria Pendências em Aberto

Controle:

```text
galPendenciasAbertasDashboard
```

Items validado:

```powerfx
FirstN(
    Filter(
        PendenciasOperacionais;
        PlantaoOrigem.Id = varPlantaoAtual.ID
    );
    3
)
```

Rótulo único:

```text
lblGalPendenciaResumo
```

Text validado:

```powerfx
Coalesce(ThisItem.NumeroPendencia; ThisItem.Title) & Char(10) &
Left(Coalesce(ThisItem.Descricao; "Sem descrição registrada."); 80) & Char(10) &
"Status: " & Coalesce(ThisItem.StatusPendencia.Value; "Não informado")
```

Se `.Value` der erro em outra máquina/sessão, usar versão sem `.Value` temporariamente.

Resultado validado:

```text
PEN-TESTE-001
Pendência fictícia criada apenas para validar relacionamento com plantão e local
Status: Aberta
```

### Galeria Últimas Ocorrências

Controle:

```text
galUltimasOcorrenciasDashboard
```

Items validado:

```powerfx
FirstN(
    Filter(
        Ocorrencias;
        Plantao.Id = varPlantaoAtual.ID
    );
    3
)
```

Rótulo único:

```text
lblGalOcorrenciaResumo
```

Text validado:

```powerfx
Coalesce(ThisItem.NumeroOcorrencia; ThisItem.Title) & Char(10) &
Coalesce(ThisItem.TipoOcorrencia.Value; "Tipo não informado") & " | " &
Coalesce(ThisItem.StatusOcorrencia.Value; "Status não informado") & Char(10) &
Left(Coalesce(ThisItem.Descricao; "Sem descrição registrada."); 80)
```

Resultado validado:

```text
OCO-TESTE-001
Alarme | Aberta
Registro fictício de alarme para validação do cadastro de ocorrências.
```

---

## 30. Livro do Plantão validado

### Visibilidade

`ctnLivroPlantao.Visible`:

```powerfx
varMenuSelecionado = "Livro do Plantão"
```

### Tela/área validada

A área aparece ao clicar em `Livro do Plantão` e o Dashboard some corretamente.

Conteúdo validado:

```text
Livro do Plantão
Plantão: PL-2026-06-08-DIA-BI | Status: Em preenchimento | Líder: Warley da Silva Conceição

Passagem de Serviço
Plantão fictício criado apenas para validação estrutural.

Equipe do Plantão
Líder Teste 01 | Líder | Brigada de Incêndio | Presente
Bombeiro Teste 01 | Bombeiro | Angra 1 | Presente
```

### `lblLivroPlantaoTitulo.Text`

```powerfx
"Livro do Plantão"
```

Visual validado:

- Título destacado em azul institucional.
- Alinhado à esquerda.

### `lblLivroPlantaoResumo.Text`

```powerfx
"Plantão: " & Coalesce(varPlantaoAtual.CodigoPlantao; "NÃO ENCONTRADO") &
" | Status: " & Coalesce(varPlantaoAtual.StatusLivro.Value; "Não informado") &
" | Líder: " & Coalesce(varPlantaoAtual.LiderResponsavelAtual.DisplayName; "Não informado")
```

### `lblLivroPlantaoPassagemTitulo.Text`

```powerfx
"Passagem de Serviço"
```

Visual validado:

- Título destacado em azul institucional.
- Card alinhado com o restante do conteúdo.

### `lblLivroPlantaoPassagemTexto.Text`

```powerfx
Coalesce(varPlantaoAtual.PassagemServico; "Nenhuma passagem de serviço registrada até o momento.")
```

Resultado validado:

```text
Plantão fictício criado apenas para validação estrutural.
```

### Galeria Equipe do Plantão

Controle:

```text
galLivroPlantaoEquipe
```

Items validado:

```powerfx
FirstN(
    Filter(
        EquipePlantao;
        Plantao.Id = varPlantaoAtual.ID
    );
    5
)
```

Visible validado:

```powerfx
CountRows(
    Filter(
        EquipePlantao;
        Plantao.Id = varPlantaoAtual.ID
    )
) > 0
```

Rótulo único:

```text
lblGalEquipeResumo
```

Text validado:

```powerfx
Coalesce(ThisItem.NomeIntegrante; ThisItem.Title) & " | " &
Coalesce(ThisItem.FuncaoNoPlantao.Value; "Função não informada") & " | " &
Coalesce(ThisItem.PostoServico.Value; "Posto não informado") & " | " &
Coalesce(ThisItem.Presenca.Value; "Presença não informada")
```

Resultado validado:

```text
Líder Teste 01 | Líder | Brigada de Incêndio | Presente
Bombeiro Teste 01 | Bombeiro | Angra 1 | Presente
```

### Mensagem de equipe vazia

Controle:

```text
lblLivroPlantaoEquipeVazia
```

Visible validado:

```powerfx
CountRows(
    Filter(
        EquipePlantao;
        Plantao.Id = varPlantaoAtual.ID
    )
) = 0
```

Mensagem:

```powerfx
"Nenhum integrante registrado para este plantão até o momento."
```

Validação: a mensagem sumiu quando havia integrantes fictícios.

---

## 31. Padrão visual validado

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
```

Decisões visuais:

- Títulos das áreas principais e cards devem ficar destacados.
- Cards devem ter borda leve e recuo interno consistente.
- Evitar centralização indevida.
- Conteúdo institucional deve ficar alinhado à esquerda.
- Evitar três rótulos separados dentro de galerias pequenas; preferir rótulo único com `Char(10)` quando a área for compacta.

---

## 32. Cuidado no Power Apps

- Quando colar fórmula, colar na barra superior de fórmula, não no campo textual de propriedades.
- Se a fórmula aparecer na tela como texto, foi colada no local errado ou com aspas extras externas.
- Para campos de consulta do SharePoint, usar `.Id` para comparar com `ID` do item relacionado, quando necessário.
- Campos Choice geralmente usam `.Value`.
- Campos Pessoa podem exigir `.DisplayName`, `.Email` ou objeto de usuário conforme o controle.
- Se `ThisItem` der erro em rótulos de galeria, conferir se o rótulo está realmente **dentro do template da galeria**.
- Se a galeria pedir “Adicione um item do painel inserir ou conecte-se aos dados”, primeiro validar `Items = NomeDaLista` antes de aplicar filtros.
- Mensagem de vazio deve usar `CountRows(Filter(Lista; Relacionamento.Id = varPlantaoAtual.ID))`, não `CountRows(Galeria.AllItems)`, quando `Visible` da própria galeria interfere na contagem.
- Avisos amarelos de delegação/consulta devem ser analisados depois, antes de usar dados reais em volume.
- Não tentar arrastar controles para dentro de containers; usar o botão `+` do próprio container sempre que possível.

---

## 33. Próxima etapa no novo chat

A próxima etapa deve começar a partir daqui:

```text
Preparar area Ocorrencias do Plantao dentro da tela Livro do Plantao.
```

Objetivo da próxima etapa:

- Criar um novo card abaixo de `Equipe do Plantão` dentro de `ctnLivroPlantao`.
- Nome sugerido: `ctnLivroPlantaoOcorrencias`.
- Título: `Ocorrências do Plantão`.
- Criar galeria vinculada à lista `Ocorrencias`.
- Filtrar por `Plantao.Id = varPlantaoAtual.ID`.
- Exibir a ocorrência fictícia `OCO-TESTE-001`.
- Usar rótulo único na galeria para evitar sobreposição.
- Manter dados fictícios.
- Validar visualmente antes de registrar.

### Estrutura sugerida

```text
ctnLivroPlantao
  ctnLivroPlantaoOcorrencias
    lblLivroPlantaoOcorrenciasTitulo
    galLivroPlantaoOcorrencias
      lblGalLivroPlantaoOcorrenciaResumo
    lblLivroPlantaoOcorrenciasVazia
```

### Fórmula inicial sugerida para galeria

```powerfx
FirstN(
    Filter(
        Ocorrencias;
        Plantao.Id = varPlantaoAtual.ID
    );
    5
)
```

### Rótulo único sugerido

```powerfx
Coalesce(ThisItem.NumeroOcorrencia; ThisItem.Title) & " | " &
Coalesce(ThisItem.TipoOcorrencia.Value; "Tipo não informado") & " | " &
Coalesce(ThisItem.StatusOcorrencia.Value; "Status não informado") & Char(10) &
Left(Coalesce(ThisItem.Descricao; "Sem descrição registrada."); 100)
```

### Mensagem vazia sugerida

```powerfx
"Nenhuma ocorrência registrada para este plantão até o momento."
```

### Visible da mensagem vazia sugerido

```powerfx
CountRows(
    Filter(
        Ocorrencias;
        Plantao.Id = varPlantaoAtual.ID
    )
) = 0
```

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

E o assistente deverá começar pela etapa:

```text
Preparar area Ocorrencias do Plantao dentro da tela Livro do Plantao.
```

Não registrar nova etapa no GitHub antes de Warley validar a próxima tela, salvo se ele pedir explicitamente.
