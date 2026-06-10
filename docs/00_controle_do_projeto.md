# Controle do Projeto

## Projeto

Livro de OcorrÃªncias Digital da Brigada de IncÃªndio.

## Objetivo

Consolidar o MVP visual aprovado no Google Stitch e preparar a implementaÃ§Ã£o real em Power Apps, Microsoft Lists e SharePoint.

## DecisÃ£o de fluxo

1. Organizar documentaÃ§Ã£o no VS Code.
2. Versionar com Git/GitHub.
3. Validar estrutura das listas.
4. Criar listas no SharePoint/Microsoft Lists.
5. Criar app Canvas no Power Apps.
6. Validar com dados fictÃ­cios.
7. Liberar uso controlado.

## Ferramentas

| Ferramenta | Uso |
|---|---|
| VS Code | OrganizaÃ§Ã£o, documentaÃ§Ã£o, prompts e versionamento |
| GitHub | HistÃ³rico e backup do projeto |
| Antigravity | Apoio para revisÃ£o e geraÃ§Ã£o de arquivos/fÃ³rmulas |
| Power Apps | ImplementaÃ§Ã£o real do app |
| Microsoft Lists / SharePoint | Base de dados |
| Figma | NÃ£o priorizado neste momento |

## Regras fixas

- Interface sempre em portuguÃªs do Brasil.
- Nome oficial: Livro de OcorrÃªncias Digital da Brigada de IncÃªndio.
- NÃ£o usar nomes em inglÃªs ou rÃ³tulos herdados do Stitch.
- Header, sidebar e footer devem ser componentes Ãºnicos reutilizÃ¡veis.
- Footer no fluxo normal da pÃ¡gina.
- BotÃµes finais antes do footer.
- NÃ£o usar HTML exportado como arquitetura final sem refatoraÃ§Ã£o.

---

## Registro â€” ValidaÃ§Ã£o da Modelagem das Listas

Data: 07/06/2026  
Status: Validado para refinamento

DecisÃ£o registrada:

- Manter a estrutura inicial com 12 listas.
- Criar as listas no SharePoint por fases.
- ComeÃ§ar pela base operacional mÃ­nima.
- NÃ£o criar listas no SharePoint antes de validar os campos de escolha oficiais.

Arquivo criado:

- sharepoint/03_validacao_modelagem_listas.md

PrÃ³xima etapa:

- Validar os valores oficiais dos campos de escolha.

---

## Registro â€” Campos de Escolha

Data: 07/06/2026  
Status: Proposta inicial registrada

Arquivo criado:

- sharepoint/04_campos_de_escolha.md

DecisÃ£o registrada:

- Documentar os valores de escolha antes da criaÃ§Ã£o real das listas.
- Manter os valores como proposta inicial atÃ© validaÃ§Ã£o operacional.
- NÃ£o criar listas no SharePoint antes da validaÃ§Ã£o desses valores.

PrÃ³xima etapa:

- Validar unidades, turnos, funÃ§Ãµes, tipos de ocorrÃªncia, status, prioridades e perfis de acesso.

---

## Registro â€” Fase 1 das Listas Essenciais

Data: 07/06/2026  
Status: Preparada para validaÃ§Ã£o

Arquivo criado:

- sharepoint/05_fase1_listas_essenciais.md

DecisÃ£o registrada:

- Preparar a Fase 1 com as listas essenciais:
  - Usuarios
  - Plantoes
  - EquipePlantao
  - Ocorrencias
  - PendenciasOperacionais

ObservaÃ§Ã£o:

- Ainda nÃ£o criar listas reais no SharePoint.
- Validar primeiro campos obrigatÃ³rios, valores de escolha e dados fictÃ­cios de teste.

PrÃ³xima etapa:

- Validar se a Fase 1 pode ser usada como base para criaÃ§Ã£o manual das listas no Microsoft Lists / SharePoint.

---

## Registro â€” Roteiro de CriaÃ§Ã£o Manual da Fase 1

Data: 07/06/2026  
Status: Roteiro preparado

Arquivo criado:

- sharepoint/06_roteiro_criacao_manual_fase1.md

DecisÃ£o registrada:

- Preparar roteiro manual para criaÃ§Ã£o futura das listas da Fase 1.
- Ainda nÃ£o criar listas reais no Microsoft Lists / SharePoint.
- Validar roteiro antes de qualquer execuÃ§Ã£o real.

PrÃ³xima etapa:

- Decidir se a criaÃ§Ã£o das listas serÃ¡ manual no SharePoint ou preparada por script/documentaÃ§Ã£o passo a passo.

---

## Registro â€” Checklist de CriaÃ§Ã£o Manual da Fase 1

Data: 07/06/2026  
Status: Checklist preparado

Arquivo criado:

- sharepoint/07_checklist_criacao_manual_fase1.md

DecisÃ£o registrada:

- A criaÃ§Ã£o inicial das listas serÃ¡ manual no Microsoft Lists / SharePoint.
- NÃ£o usar script de criaÃ§Ã£o automÃ¡tica neste momento.
- NÃ£o criar Power Apps ainda.
- Criar primeiro as listas essenciais com dados fictÃ­cios.

PrÃ³xima etapa:

- Criar manualmente as listas da Fase 1 no Microsoft Lists / SharePoint quando houver ambiente disponÃ­vel.

---

## Registro â€” Guia de ExecuÃ§Ã£o Manual da Fase 1

Data: 07/06/2026  
Status: Guia operacional preparado

Arquivo criado:

- sharepoint/08_guia_execucao_manual_fase1.md

DecisÃ£o registrada:

- Criar guia operacional tela a tela para uso durante a criaÃ§Ã£o manual das listas.
- A criaÃ§Ã£o real ainda depende de ambiente SharePoint/Microsoft Lists disponÃ­vel.
- Power Apps continua fora desta etapa.

PrÃ³xima etapa:

- Usar o guia para criar manualmente as listas essenciais no Microsoft Lists / SharePoint.

---

## Registro â€” Script de Teste de ConexÃ£o SharePoint

Data: 07/06/2026  
Status: Script preparado

Arquivo criado:

- scripts/03_testar_conexao_sharepoint_pnp.ps1

DecisÃ£o registrada:

- Antes de criar listas via PnP.PowerShell, testar a conexÃ£o com o site SharePoint.
- O script apenas conecta, lÃª informaÃ§Ãµes do site e lista as listas existentes.
- O script nÃ£o cria, altera nem apaga dados.

PrÃ³xima etapa:

- Executar o teste de conexÃ£o informando a URL correta do site SharePoint.

---

## Registro â€” Bloqueio de Autenticacao PnP

Data: 08/06/2026
Status: Bloqueio identificado

Arquivo criado:

- sharepoint/10_bloqueio_autenticacao_pnp.md

Decisao registrada:

- O PnP.PowerShell foi instalado e reconhecido.
- A conexao falhou por necessidade de ClientId / App Registration no Entra ID.
- A criacao automatizada via PnP fica pausada.
- A criacao manual das listas volta a ser o caminho principal.

Proxima etapa:

- Decidir se as listas serao criadas no site SGES ou em um site SharePoint separado.

---

## Registro â€” Site SharePoint Brigada de Incendio

Data: 08/06/2026
Status: Site criado

Site criado:

- https://etnweb.sharepoint.com/sites/BrigadaIncendio

Decisao registrada:

- O site Brigada de Incendio sera usado como base do Livro de Ocorrencias Digital da Brigada de Incendio.
- O site SGES atual sera mantido como legado/provisorio.
- A criacao das listas da Fase 1 deve ocorrer no novo site.

Proxima etapa:

- Criar manualmente as listas essenciais da Fase 1 no site Brigada de Incendio.

---

## Registro â€” Ajuste de Posto de Servico

Data: 08/06/2026
Status: Ajuste operacional registrado

Arquivo criado:

- sharepoint/12_ajuste_posto_servico.md

Decisao registrada:

- Usar Posto de Servico como termo operacional correto.
- Usar PostoServico como nome tecnico de coluna.
- Valores oficiais: Angra 1, Angra 2, Angra 3 e Brigada de Incendio.
- Rotacao de postos e regra operacional, nao valor de campo.
- Bombeiros rodam todos os postos.
- Brigadistas atuam em Angra 1 e Angra 2 em dias uteis e horario comercial.
- Lideres ficam apenas na Brigada de Incendio.

Proxima etapa:

- Corrigir referencias documentais antigas a PostoServico e seguir a criacao manual das listas usando PostoServico.


---

## Registro — Ajuste de Turno e Plantao Extra

Data: 08/06/2026
Status: Ajuste operacional registrado

Arquivo criado:

- sharepoint/13_ajuste_turno_plantao_extra.md

Decisao registrada:

- Substituir Administrativo por Horario Comercial no campo Turno.
- Remover Extra do campo Turno.
- Criar a coluna PlantaoExtra do tipo Sim/Nao.
- Considerar Extra como condicao do plantao, nao como turno.

Validacao manual:

- Lista Plantoes criada no SharePoint.

Proxima etapa:

- Criar a lista EquipePlantao.

---

## Registro — Substituições, Responsabilidade e Autoria

Data: 08/06/2026
Status: Regra operacional registrada

Arquivo criado:

- sharepoint/14_substituicoes_responsabilidade_autoria.md

Decisões registradas:

- O livro pertence ao plantão, não à pessoa.
- LiderResponsavelAtual controla quem edita/finaliza o livro.
- Substituição de líder deve ser registrada em Plantoes.
- Substituição de integrantes deve ser registrada em EquipePlantao.
- EquipePlantao foi corrigida manualmente, removendo campos de líder que pertencem a Plantoes.
- Ocorrências devem separar líder no momento do fato, usuário que registrou e responsável pelo acompanhamento.

Próxima etapa:

- Conferir a lista Plantoes e seguir para PendenciasOperacionais.

---

## Registro — Lista Plantoes corrigida no SharePoint

Data: 08/06/2026
Status: Corrigida manualmente

Site:

- https://etnweb.sharepoint.com/sites/BrigadaIncendio

Lista corrigida:

- Plantoes

Correcoes aplicadas:

- LiderPlantao deixou de ser o campo principal.
- Foram adotados LiderEscalado e LiderResponsavelAtual.
- Foram adicionados campos para substituicao de lider.
- Foi confirmada a coluna PlantaoExtra.
- Foi confirmada a coluna PostoServico.
- Foi confirmada a regra de que o livro pertence ao plantao, nao a pessoa.

Colunas principais esperadas:

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

Proxima etapa:

- Criar a lista PendenciasOperacionais.

---

## Registro — Lista LocaisOperacionais criada no SharePoint

Data: 08/06/2026
Status: Criada manualmente

Site:

- https://etnweb.sharepoint.com/sites/BrigadaIncendio

Lista criada:

- LocaisOperacionais

Finalidade:

- Servir como cadastro pesquisavel de locais operacionais detalhados.
- Apoiar ocorrencias, inspecoes, pendencias e demais registros que exigem localizacao precisa.
- Separar PostoServico de LocalOperacional.

Decisao registrada:

- PostoServico sera usado para lotacao/posto amplo: Angra 1, Angra 2, Angra 3 e Brigada de Incendio.
- LocalOperacional sera usado para detalhamento do fato, incluindo Zona, Local, Area, Elevacao, Complemento e Referencias.
- Locais mutaveis devem ser cadastrados, pesquisados e validados.
- Registros futuros devem guardar tambem copia textual do local no momento do registro, para preservar historico.

Lista LocaisOperacionais criada com estrutura baseada em:

- Titulo
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

Proxima etapa:

- Ajustar PendenciasOperacionais para usar LocalOperacional e campos de snapshot textual do local.

---

## Registro — Lista PendenciasOperacionais criada no SharePoint

Data: 08/06/2026
Status: Criada manualmente

Site:

- https://etnweb.sharepoint.com/sites/BrigadaIncendio

Lista criada:

- PendenciasOperacionais

Finalidade:

- Controlar pendencias operacionais abertas, em acompanhamento, aguardando manutencao, concluidas ou canceladas entre plantoes.
- Permitir vinculo com Plantoes.
- Permitir vinculo opcional com LocaisOperacionais.
- Guardar snapshot textual do local no momento do registro.

Colunas principais criadas:

- Titulo
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

Decisoes registradas:

- A coluna padrao Titulo sera usada como resumo curto da pendencia.
- Nao foi criada coluna separada chamada Titulo.
- LocalOperacional e campo de consulta para LocaisOperacionais.
- PlantaoOrigem e campo de consulta para Plantoes.
- Campos ZonaRegistro, LocalRegistro, AreaRegistro, ElevacaoRegistro e ComplementoLocal preservam o historico textual do local.

Proxima etapa:

- Criar a lista Ocorrencias com responsabilidade/autoria e LocalOperacional.

---

## Registro — Lista Ocorrencias criada no SharePoint

Data: 08/06/2026
Status: Criada manualmente

Site:

- https://etnweb.sharepoint.com/sites/BrigadaIncendio

Lista criada:

- Ocorrencias

Finalidade:

- Registrar ocorrencias operacionais vinculadas aos plantoes da Brigada de Incendio.
- Controlar local operacional detalhado.
- Registrar responsabilidade no momento do fato.
- Registrar autoria do lancamento.
- Registrar acompanhamento atual da ocorrencia.
- Permitir vinculo com pendencia operacional gerada.

Decisoes registradas:

- A coluna padrao Titulo sera usada como titulo curto da ocorrencia.
- Nao foi criada coluna separada chamada Titulo.
- Plantao consulta a lista Plantoes.
- LocalOperacional consulta a lista LocaisOperacionais.
- PendenciaGerada consulta a lista PendenciasOperacionais.
- Foram criados campos de snapshot textual do local para preservar historico.
- Foram criados campos para separar lider responsavel no momento do fato, usuario que registrou e responsavel pelo acompanhamento.
- ComplementoLocal foi corrigido para texto com varias linhas.

Colunas principais criadas:

- Titulo
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

Proxima etapa:

- Registrar fechamento da criacao estrutural das listas principais.
- Conferir todas as listas no SharePoint.
- Preparar validacao com dados ficticios.

---

## Registro — Fechamento Estrutural das Listas Principais

Data: 08/06/2026
Status: Criacao estrutural principal concluida

Arquivo criado:

- sharepoint/18_fechamento_estrutural_listas_principais.md

Listas criadas no SharePoint:

- Usuarios
- Plantoes
- EquipePlantao
- LocaisOperacionais
- PendenciasOperacionais
- Ocorrencias

Decisao registrada:

- A estrutura principal de listas do Livro de Ocorrencias Digital da Brigada de Incendio foi criada manualmente no SharePoint.
- O site oficial usado foi https://etnweb.sharepoint.com/sites/BrigadaIncendio.
- A proxima etapa sera validacao com dados ficticios.

Proxima etapa:

- Preparar roteiro de validacao com dados ficticios.

---

## Registro — Roteiro de Validacao com Dados Ficticios

Data: 08/06/2026
Status: Roteiro preparado

Arquivo criado:

- sharepoint/19_roteiro_validacao_dados_ficticios.md

Decisao registrada:

- A validacao inicial sera feita apenas com dados ficticios.
- Nao usar dados reais sensiveis.
- Validar usuarios, locais operacionais, plantao, equipe, pendencia e ocorrencia.
- Validar relacionamentos entre Plantoes, EquipePlantao, LocaisOperacionais, PendenciasOperacionais e Ocorrencias.

Proxima etapa:

- Executar manualmente a validacao com dados ficticios no SharePoint.

---

## Registro — Validacao com Dados Ficticios

Data: 09/06/2026
Status: Validacao manual principal realizada

Arquivo criado:

- sharepoint/20_validacao_dados_ficticios.md

Resultado registrado:

- Locais operacionais ficticios cadastrados.
- Plantao ficticio criado.
- Pendencia ficticia criada.
- Ocorrencia ficticia criada.
- Relacionamentos entre listas validados manualmente.
- Campos de consulta validados por selecao de item sugerido.
- Lista LocaisOperacionais corrigida para URL propria.
- Coluna Observacoes duplicada corrigida em LocaisOperacionais.

Proxima etapa:

- Preparar ajustes de exibicoes das listas e organizar a fase inicial do Power Apps.

---

## Registro — Exibicoes e Fase Inicial do Power Apps

Data: 09/06/2026
Status: Planejamento inicial preparado

Arquivos criados:

- sharepoint/21_exibicoes_recomendadas_listas.md
- powerapps/01_fase_inicial_powerapps.md

Decisoes registradas:

- Preparar exibicoes uteis para conferencia e administracao das listas.
- Organizar a primeira fase do Power Apps com base nas listas SharePoint ja criadas.
- Iniciar pelo Dashboard Operacional, Registro do Plantao, Equipe do Plantao, Ocorrencias e Pendencias.

Proxima etapa:

- Criar mapa de navegacao e componentes reutilizaveis para o Power Apps.

---

## Registro — Mapa de Navegacao e Componentes Power Apps

Data: 09/06/2026
Status: Planejamento preparado

Arquivos criados:

- powerapps/02_mapa_navegacao_powerapps.md
- powerapps/03_componentes_reutilizaveis_powerapps.md

Decisoes registradas:

- Definido mapa inicial de navegacao do Power Apps.
- Definidos componentes reutilizaveis obrigatorios.
- Definidos componentes especificos para selecao de local, responsabilidade do lider e responsabilidade/autoria de ocorrencias.

Proxima etapa:

- Preparar prompt mestre tecnico para orientar a implementacao inicial do Power Apps.

---

## Registro — Prompt Mestre Tecnico Power Apps

Data: 09/06/2026
Status: Prompt mestre tecnico preparado

Arquivos criados:

- prompts/PROMPT_MESTRE_TECNICO_POWERAPPS.md
- powerapps/04_prompt_mestre_tecnico_powerapps.md

Decisoes registradas:

- Consolidado prompt mestre tecnico para orientar a implementacao inicial no Power Apps.
- Preservadas as regras de listas SharePoint, navegacao, componentes reutilizaveis, permissoes, substituicao de lider, ocorrencias e locais operacionais.

Proxima etapa:

- Preparar roteiro pratico para conectar as listas SharePoint no Power Apps e criar o AppShell inicial.

---

## Registro — Roteiro Pratico de Conexao e AppShell

Data: 09/06/2026
Status: Roteiro pratico preparado

Arquivo criado:

- powerapps/05_roteiro_conexao_listas_appshell.md

Decisoes registradas:

- A primeira etapa pratica no Power Apps sera conectar as listas SharePoint.
- O app inicial deve montar AppShell, Header, Sidebar, AreaConteudo e Footer.
- O Dashboard inicial deve usar dados ficticios ja cadastrados.
- Ainda nao criar automacoes, permissoes complexas nem publicacao para usuarios finais.

Proxima etapa:

- Executar manualmente a criacao do app canvas no Power Apps e conectar as listas SharePoint.

---

## Registro — Prompt Mestre Atualizado para Novo Chat

Data: 09/06/2026
Status: Prompt mestre atualizado salvo localmente

Arquivo salvo:

- prompts/prompt_mestre_livro_ocorrencias_brigada_2026-06-09_powerapps_inicial.md

Conteudo consolidado:

- Estrutura SharePoint validada.
- Dados ficticios validados.
- Listas conectadas no Power Apps.
- App Canvas inicial criado em formato desktop/tablet.
- scrDashboard criado.
- varPlantaoAtual carregando o plantao ficticio.
- Dashboard inicial exibindo plantao atual, pendencias abertas e ocorrencias do plantao.

Proxima etapa:

- Continuar em novo chat usando este arquivo como memoria operacional principal.

---

## Registro — Validacao Inicial do Power Apps

Data: 09/06/2026
Status: Validacao inicial realizada

Arquivo criado:

- powerapps/06_validacao_inicial_powerapps.md

Resultado:

- App Canvas criado em formato Tablet.
- Listas SharePoint conectadas.
- Tela scrDashboard criada.
- App.OnStart configurado.
- Plantao ficticio carregado.
- Contagem de pendencias abertas retornou 1.
- Contagem de ocorrencias do plantao retornou 1.

Proxima etapa:

- Organizar AppShell visual e transformar rotulos de teste em cards do Dashboard.

---

## Registro — Validacao Visual dos Cards do Dashboard

Data: 09/06/2026
Status: Validado

Arquivo criado:

- powerapps/07_validacao_visual_cards_dashboard.md

Resultado:

- Cards do Dashboard criados dentro do MainContainer1.
- Container ctnCardsDashboard validado.
- Cards de Plantao Atual, Status do Livro, Lider Responsavel, Pendencias Abertas e Ocorrencias do Plantao validados.
- Dados ficticios exibidos corretamente.
- Avisos amarelos conhecidos nao bloquearam a etapa.

Proxima etapa:

- Organizar HeaderContainer1 com titulo institucional e contexto operacional.

---

## Registro — Validacao Visual do Header do Dashboard

Data: 09/06/2026
Status: Validado

Arquivo criado:

- powerapps/08_validacao_visual_header_dashboard.md

Resultado:

- HeaderContainer1 validado visualmente.
- Titulo institucional exibido corretamente.
- Subtitulo operacional exibiu plantao e status do livro.
- Cards do Dashboard permaneceram organizados.
- Sem footer nesta fase.

Proxima etapa:

- Organizar SidebarContainer1 com menu lateral inicial.

---

## Registro — Validacao Visual do Menu Lateral do Dashboard

Data: 09/06/2026
Status: Validado

Arquivo criado:

- powerapps/09_validacao_visual_sidebar_dashboard.md

Resultado:

- SidebarContainer1 validado visualmente.
- Menu Operacional exibido no topo da lateral.
- Botoes do menu organizados e empilhados.
- Opcao POTS aplicada no lugar de POTs e Ciencia.
- Header e cards permaneceram corretos.
- Sem footer nesta fase.

Proxima etapa:

- Organizar conteudo principal do Dashboard abaixo dos cards.

---

## Registro — Validacao Visual do Conteudo Principal do Dashboard

Data: 09/06/2026
Status: Validado

Arquivo criado:

- powerapps/10_validacao_visual_conteudo_dashboard.md

Resultado:

- Conteudo principal inferior do Dashboard validado.
- Secoes Resumo Operacional, Pendencias em Aberto e Ultimas Ocorrencias criadas.
- Titulos corrigidos para nao ficarem cortados.
- Header, menu lateral com POTS e cards permaneceram corretos.
- Sem footer nesta fase.

Proxima etapa:

- Preparar galeria resumida de Pendencias em Aberto vinculada a PendenciasOperacionais.

---

## Registro — Validacao da Galeria de Pendencias em Aberto no Dashboard

Data: 10/06/2026
Status: Validado

Arquivo criado:

- powerapps/11_validacao_galeria_pendencias_dashboard.md

Resultado:

- Galeria galPendenciasAbertasDashboard criada e validada.
- Galeria vinculada a lista PendenciasOperacionais.
- Pendencia ficticia PEN-TESTE-001 exibida corretamente.
- Rotulo unico lblGalPendenciaResumo adotado para evitar sobreposicao.
- Header, menu lateral com POTS, cards e secoes inferiores permaneceram corretos.
- Sem footer nesta fase.

Proxima etapa:

- Preparar galeria resumida de Ultimas Ocorrencias vinculada a lista Ocorrencias.
