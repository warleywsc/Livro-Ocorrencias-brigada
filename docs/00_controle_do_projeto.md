# Controle do Projeto

## Projeto

Livro de Ocorrências Digital da Brigada de Incêndio.

## Objetivo

Consolidar o MVP visual aprovado no Google Stitch e preparar a implementação real em Power Apps, Microsoft Lists e SharePoint.

## Decisão de fluxo

1. Organizar documentação no VS Code.
2. Versionar com Git/GitHub.
3. Validar estrutura das listas.
4. Criar listas no SharePoint/Microsoft Lists.
5. Criar app Canvas no Power Apps.
6. Validar com dados fictícios.
7. Liberar uso controlado.

## Ferramentas

| Ferramenta | Uso |
|---|---|
| VS Code | Organização, documentação, prompts e versionamento |
| GitHub | Histórico e backup do projeto |
| Antigravity | Apoio para revisão e geração de arquivos/fórmulas |
| Power Apps | Implementação real do app |
| Microsoft Lists / SharePoint | Base de dados |
| Figma | Não priorizado neste momento |

## Regras fixas

- Interface sempre em português do Brasil.
- Nome oficial: Livro de Ocorrências Digital da Brigada de Incêndio.
- Não usar nomes em inglês ou rótulos herdados do Stitch.
- Header, sidebar e footer devem ser componentes únicos reutilizáveis.
- Footer no fluxo normal da página.
- Botões finais antes do footer.
- Não usar HTML exportado como arquitetura final sem refatoração.

---

## Registro — Validação da Modelagem das Listas

Data: 07/06/2026  
Status: Validado para refinamento

Decisão registrada:

- Manter a estrutura inicial com 12 listas.
- Criar as listas no SharePoint por fases.
- Começar pela base operacional mínima.
- Não criar listas no SharePoint antes de validar os campos de escolha oficiais.

Arquivo criado:

- sharepoint/03_validacao_modelagem_listas.md

Próxima etapa:

- Validar os valores oficiais dos campos de escolha.

---

## Registro — Campos de Escolha

Data: 07/06/2026  
Status: Proposta inicial registrada

Arquivo criado:

- sharepoint/04_campos_de_escolha.md

Decisão registrada:

- Documentar os valores de escolha antes da criação real das listas.
- Manter os valores como proposta inicial até validação operacional.
- Não criar listas no SharePoint antes da validação desses valores.

Próxima etapa:

- Validar unidades, turnos, funções, tipos de ocorrência, status, prioridades e perfis de acesso.

---

## Registro — Fase 1 das Listas Essenciais

Data: 07/06/2026  
Status: Preparada para validação

Arquivo criado:

- sharepoint/05_fase1_listas_essenciais.md

Decisão registrada:

- Preparar a Fase 1 com as listas essenciais:
  - Usuarios
  - Plantoes
  - EquipePlantao
  - Ocorrencias
  - PendenciasOperacionais

Observação:

- Ainda não criar listas reais no SharePoint.
- Validar primeiro campos obrigatórios, valores de escolha e dados fictícios de teste.

Próxima etapa:

- Validar se a Fase 1 pode ser usada como base para criação manual das listas no Microsoft Lists / SharePoint.

---

## Registro — Roteiro de Criação Manual da Fase 1

Data: 07/06/2026  
Status: Roteiro preparado

Arquivo criado:

- sharepoint/06_roteiro_criacao_manual_fase1.md

Decisão registrada:

- Preparar roteiro manual para criação futura das listas da Fase 1.
- Ainda não criar listas reais no Microsoft Lists / SharePoint.
- Validar roteiro antes de qualquer execução real.

Próxima etapa:

- Decidir se a criação das listas será manual no SharePoint ou preparada por script/documentação passo a passo.

---

## Registro — Checklist de Criação Manual da Fase 1

Data: 07/06/2026  
Status: Checklist preparado

Arquivo criado:

- sharepoint/07_checklist_criacao_manual_fase1.md

Decisão registrada:

- A criação inicial das listas será manual no Microsoft Lists / SharePoint.
- Não usar script de criação automática neste momento.
- Não criar Power Apps ainda.
- Criar primeiro as listas essenciais com dados fictícios.

Próxima etapa:

- Criar manualmente as listas da Fase 1 no Microsoft Lists / SharePoint quando houver ambiente disponível.

---

## Registro — Guia de Execução Manual da Fase 1

Data: 07/06/2026  
Status: Guia operacional preparado

Arquivo criado:

- sharepoint/08_guia_execucao_manual_fase1.md

Decisão registrada:

- Criar guia operacional tela a tela para uso durante a criação manual das listas.
- A criação real ainda depende de ambiente SharePoint/Microsoft Lists disponível.
- Power Apps continua fora desta etapa.

Próxima etapa:

- Usar o guia para criar manualmente as listas essenciais no Microsoft Lists / SharePoint.

---

## Registro — Script de Teste de Conexão SharePoint

Data: 07/06/2026  
Status: Script preparado

Arquivo criado:

- scripts/03_testar_conexao_sharepoint_pnp.ps1

Decisão registrada:

- Antes de criar listas via PnP.PowerShell, testar a conexão com o site SharePoint.
- O script apenas conecta, lê informações do site e lista as listas existentes.
- O script não cria, altera nem apaga dados.

Próxima etapa:

- Executar o teste de conexão informando a URL correta do site SharePoint.

---

## Registro — Bloqueio de Autenticacao PnP

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

## Registro — Site SharePoint Brigada de Incendio

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
