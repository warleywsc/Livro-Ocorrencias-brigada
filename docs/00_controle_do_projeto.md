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

