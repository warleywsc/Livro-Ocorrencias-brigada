# Prompt Mestre — Livro de Ocorrências Digital da Brigada de Incêndio
**Versão:** 2026-06-09 — Power Apps inicial conectado  
**Projeto:** Livro de Ocorrências Digital da Brigada de Incêndio  
**Responsável:** Warley da Silva Conceição  
**Repositório:** `https://github.com/warleywsc/Livro-Ocorrencias-brigada.git`  
**Site SharePoint oficial:** `https://etnweb.sharepoint.com/sites/BrigadaIncendio`

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

## 4. Estado atual resumido

### Situação atual em 09/06/2026

A fase estrutural SharePoint foi concluída, validada com dados fictícios e registrada no GitHub.

Também já foi iniciado o app no Power Apps:

- App Canvas criado no ambiente **Eletronuclear (default)**.
- Nome do app: **Livro de Ocorrências Digital da Brigada de Incêndio**.
- Formato escolhido: **Tablet**, pois o uso principal será desktop/notebook.
- Template inicial usado: **Barra lateral**.
- Tela inicial renomeada para `scrDashboard`.
- Listas SharePoint conectadas ao app.
- Fórmula `App.OnStart` criada.
- Variável `varPlantaoAtual` carregou corretamente o plantão fictício.
- Dashboard inicial exibiu:
  - `Plantão atual: PL-2026-06-08-DIA-BI`
  - `Pendências abertas: 1`
  - `Ocorrências do plantão: 1`

Importante: apareceram ícones amarelos de aviso nos rótulos de contagem. Eles não bloquearam o teste; provavelmente são avisos de delegação/consulta. Tratar depois, antes de ampliar dados reais.

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

### Commits recentes

```text
1ef9df4 prepara roteiro pratico Power Apps inicial
8e09284 prepara prompt mestre tecnico Power Apps
80545ff prepara mapa de navegacao e componentes Power Apps
75248bd prepara exibicoes e fase inicial do Power Apps
41117f7 registra validacao com dados ficticios
03f73b9 prepara roteiro de validacao com dados ficticios
1dab3f3 registra fechamento estrutural das listas principais
a00e8e0 registra lista ocorrencias
e2bb0d3 registra lista pendencias operacionais
45aca9d registra lista locais operacionais
```

### Arquivos principais criados

```text
docs/00_controle_do_projeto.md
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
powerapps/01_fase_inicial_powerapps.md
powerapps/02_mapa_navegacao_powerapps.md
powerapps/03_componentes_reutilizaveis_powerapps.md
powerapps/04_prompt_mestre_tecnico_powerapps.md
powerapps/05_roteiro_conexao_listas_appshell.md
prompts/PROMPT_MESTRE_TECNICO_POWERAPPS.md
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

### Regras visuais obrigatórias

- Header, sidebar e footer devem ser componentes únicos reutilizáveis.
- Footer deve ficar no fluxo normal da página/tela.
- Footer nunca deve ser fixed, sticky, absolute ou sobreposto.
- Botões finais devem ficar antes do footer.
- Interface em português do Brasil.
- Evitar variações entre telas.
- Não reutilizar HTML exportado do Stitch como arquitetura final sem refatoração.

---

## 9. Componentes obrigatórios

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

---

## 10. Navegação principal prevista

Menu lateral:

- Dashboard
- Livro do Plantão
- Ocorrências
- Pendências
- POTs e Ciência
- Histórico
- Relatórios
- Administração

Dashboard deve ser a tela inicial.

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

- pode haver falta;
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
```

### Pendência fictícia

```text
Título: Pendência fictícia em local operacional
NumeroPendencia: PEN-TESTE-001
PlantaoOrigem: PL-2026-06-08-DIA-BI
OrigemPendencia: Manual
PostoServico: Brigada de Incêndio
StatusPendencia: Aberta
```

### Ocorrência fictícia

```text
Título: Ocorrência fictícia de alarme
Plantao: PL-2026-06-08-DIA-BI
NumeroOcorrencia: OCO-TESTE-001
TipoOcorrencia: Alarme
PostoServico: Angra 3
StatusOcorrencia: Concluída
GeraPendencia: Sim
PendenciaGerada: Pendência fictícia em local operacional
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

### Tela inicial

`Screen1` foi renomeada para:

```text
scrDashboard
```

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

### Teste visual de plantão atual

Rótulo de teste:

```powerfx
"Plantão atual: " & Coalesce(varPlantaoAtual.CodigoPlantao; "NÃO ENCONTRADO")
```

Resultado validado:

```text
Plantão atual: PL-2026-06-08-DIA-BI
```

### Teste de pendências abertas

Rótulo de teste:

```powerfx
"Pendências abertas: " & CountRows(
    Filter(
        PendenciasOperacionais;
        PlantaoOrigem.Id = varPlantaoAtual.ID &&
        StatusPendencia.Value <> "Concluída" &&
        StatusPendencia.Value <> "Cancelada"
    )
)
```

Resultado validado:

```text
Pendências abertas: 1
```

### Teste de ocorrências do plantão

Rótulo de teste:

```powerfx
"Ocorrências do plantão: " & CountRows(
    Filter(
        Ocorrencias;
        Plantao.Id = varPlantaoAtual.ID
    )
)
```

Resultado validado:

```text
Ocorrências do plantão: 1
```

### Observação sobre avisos amarelos

Os rótulos de contagem mostraram ícones amarelos de aviso. Isso não impediu o funcionamento. Provável aviso de delegação/consulta. Tratar depois, antes de usar dados reais em volume.

---

## 25. Próxima etapa recomendada no novo chat

A próxima etapa deve ser registrar no GitHub o avanço manual do Power Apps e depois seguir para organizar o AppShell/Dashboard inicial.

### Primeiro passo no novo chat

Registrar no repositório:

- app Canvas criado;
- formato Tablet escolhido;
- template Barra lateral escolhido;
- listas conectadas;
- `scrDashboard` criada;
- `App.OnStart` configurado;
- testes de leitura e relacionamento passaram;
- contagens validadas: 1 pendência e 1 ocorrência.

### Bloco PowerShell sugerido para registrar estado atual

Usar no terminal do VS Code, na pasta do repositório:

```powershell
$doc = @(
"# Validacao Inicial do Power Apps",
"",
"Projeto: Livro de Ocorrencias Digital da Brigada de Incendio",
"Data: 09/06/2026",
"Status: Validacao inicial realizada",
"",
"## 1. App criado",
"",
"- App Canvas criado no Power Apps.",
"- Nome: Livro de Ocorrencias Digital da Brigada de Incendio.",
"- Formato: Tablet.",
"- Template inicial: Barra lateral.",
"- Uso principal previsto: desktop/notebook.",
"",
"## 2. Fontes de dados conectadas",
"",
"- Usuarios",
"- Plantoes",
"- EquipePlantao",
"- LocaisOperacionais",
"- PendenciasOperacionais",
"- Ocorrencias",
"",
"## 3. Tela inicial",
"",
"- Screen1 renomeada para scrDashboard.",
"",
"## 4. App.OnStart configurado",
"",
"Formula usada:",
"",
"Set(varMenuSelecionado; `"Dashboard`");;",
"Set(varPlantaoAtual; LookUp(Plantoes; CodigoPlantao = `"PL-2026-06-08-DIA-BI`"))",
"",
"## 5. Validacoes realizadas",
"",
"- varPlantaoAtual carregou corretamente o plantao ficticio.",
"- Dashboard exibiu: Plantao atual PL-2026-06-08-DIA-BI.",
"- Contagem de pendencias abertas retornou 1.",
"- Contagem de ocorrencias do plantao retornou 1.",
"",
"## 6. Observacoes",
"",
"- Foram exibidos avisos amarelos nos rotulos de contagem, possivelmente relacionados a delegacao.",
"- Os avisos nao bloquearam a validacao inicial.",
"- Ajustes de delegacao/consulta devem ser tratados antes de dados reais em volume.",
"",
"## 7. Proxima etapa",
"",
"- Organizar AppShell visual.",
"- Padronizar Header, Sidebar, MainContainer e Footer.",
"- Transformar rotulos de teste em cards do Dashboard."
)

$doc | Set-Content -Path ".\powerapps\06_validacao_inicial_powerapps.md" -Encoding UTF8

$registro = @(
"",
"---",
"",
"## Registro — Validacao Inicial do Power Apps",
"",
"Data: 09/06/2026",
"Status: Validacao inicial realizada",
"",
"Arquivo criado:",
"",
"- powerapps/06_validacao_inicial_powerapps.md",
"",
"Resultado:",
"",
"- App Canvas criado em formato Tablet.",
"- Listas SharePoint conectadas.",
"- Tela scrDashboard criada.",
"- App.OnStart configurado.",
"- Plantao ficticio carregado.",
"- Contagem de pendencias abertas retornou 1.",
"- Contagem de ocorrencias do plantao retornou 1.",
"",
"Proxima etapa:",
"",
"- Organizar AppShell visual e transformar rotulos de teste em cards do Dashboard."
)

$registro | Add-Content -Path ".\docs\00_controle_do_projeto.md" -Encoding UTF8

git status -sb
git add .\docs\00_controle_do_projeto.md .\powerapps\06_validacao_inicial_powerapps.md
git commit -m "registra validacao inicial Power Apps"
git push

$relatorio = @()
$relatorio += "STATUS_GIT="
$relatorio += git status -sb
$relatorio += ""
$relatorio += "ULTIMOS_COMMITS="
$relatorio += git log --oneline -5
$relatorio += ""
$relatorio += "ARQUIVOS_ALTERADOS_NO_ULTIMO_COMMIT="
$relatorio += git show --stat --oneline -1
$relatorio += ""
$relatorio += "PROXIMA_ETAPA="
$relatorio += "Organizar AppShell visual e transformar rotulos de teste em cards do Dashboard."

$saida = $relatorio -join "`r`n"
$saida | Set-Clipboard
$saida
```

---

## 26. Próxima fase funcional após registro

Depois de registrar o estado atual no GitHub, orientar Warley no Power Apps para:

1. Renomear containers com padrão claro.
2. Ajustar Header.
3. Ajustar Sidebar.
4. Ajustar MainContainer.
5. Criar cards do Dashboard substituindo rótulos de teste.
6. Criar layout mínimo:
   - Card Plantão Atual;
   - Card Status do Livro;
   - Card Líder Responsável Atual;
   - Card Pendências Abertas;
   - Card Ocorrências do Plantão.
7. Manter os dados fictícios por enquanto.
8. Salvar e validar visualmente.

---

## 27. Fórmulas úteis já validadas

### Plantão atual

```powerfx
"Plantão atual: " & Coalesce(varPlantaoAtual.CodigoPlantao; "NÃO ENCONTRADO")
```

### Pendências abertas

```powerfx
"Pendências abertas: " & CountRows(
    Filter(
        PendenciasOperacionais;
        PlantaoOrigem.Id = varPlantaoAtual.ID &&
        StatusPendencia.Value <> "Concluída" &&
        StatusPendencia.Value <> "Cancelada"
    )
)
```

### Ocorrências do plantão

```powerfx
"Ocorrências do plantão: " & CountRows(
    Filter(
        Ocorrencias;
        Plantao.Id = varPlantaoAtual.ID
    )
)
```

---

## 28. Cuidado no Power Apps

- Quando colar fórmula, colar na barra superior de fórmula, não no campo textual de propriedades.
- Se a fórmula aparecer na tela como texto, foi colada no local errado ou com aspas extras externas.
- Para campos de consulta do SharePoint, usar `.Id` para comparar com `ID` do item relacionado, quando necessário.
- Campos Choice geralmente usam `.Value`.
- Campos Pessoa podem exigir `.DisplayName`, `.Email` ou objeto de usuário conforme o controle.
- Avisos amarelos devem ser analisados depois, mas não bloquearam o teste inicial.

---

## 29. Comando de retomada

Ao iniciar novo chat com este arquivo anexado, a resposta esperada do assistente deve ser apenas:

```text
proximo
```

Depois Warley enviará:

```text
proximo
```

E o assistente deverá começar registrando a validação inicial do Power Apps no GitHub, salvo se Warley trouxer erro, print ou outra prioridade.
