# PROMPT_MESTRE_TECNICO_POWERAPPS_V091

**Projeto:** Livro de Ocorrências Digital da Brigada de Incêndio  
**Responsável:** Warley da Silva Conceição  
**Versão do prompt:** 2026-06-20 — Power Apps validado até V091  
**Estado validado até:** V091 - registra inventário funcional antes de piloto  
**Último commit informado:** `919dc70 V091 - registra inventario funcional antes de piloto`  
**Próxima etapa:** V092 - Revisar e concluir criação/seleção real de Plantão  
**Repositório GitHub:** `https://github.com/warleywsc/Livro-Ocorrencias-brigada.git`  
**Repositório local:** `C:\Projetos\Livro-Ocorrencias-brigada`  
**Branch:** `main`  
**Site SharePoint oficial:** `https://etnweb.sharepoint.com/sites/BrigadaIncendio`  
**Ambiente Power Apps:** Eletronuclear / Power Platform  
**App:** Livro de Ocorrências Digital da Brigada de Incêndio  
**Formato:** Tablet  
**Tela principal atual:** `scrDashboard`

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
V092 - Revisar e concluir criação/seleção real de Plantão.
```

A V092 deve começar por um diagnóstico curto do estado atual do carregamento de `varPlantaoAtual`, seleção do plantão, plantão aberto/finalizado, regras de duplicidade e controles existentes. Não implementar antes de confirmar o caminho técnico.

---

## 2. Regras permanentes de atendimento ao Warley

- Responder sempre em português do Brasil.
- Chamar o usuário de **Warley**.
- Usar sempre o nome oficial: **Livro de Ocorrências Digital da Brigada de Incêndio**.
- Não usar nomes como Brigada Digital, Fire Brigade, Logbook, Occurrences, Pendencies ou New Entry.
- Responder de forma direta, operacional e com passos claros.
- Priorizar funcionalidade e aceitação operacional antes de refinamento visual.
- Não avançar com dados reais sensíveis nos testes iniciais.
- Usar dados fictícios até validação visual e funcional.
- Quando Warley disser apenas `proximo`, considerar que a etapa anterior foi validada, salvo se houver erro, print, dúvida ou pendência.
- Quando Warley enviar print, analisar visualmente antes de mandar a próxima etapa.
- Não dizer que uma etapa está validada se houver corte, sobreposição, item vazio indevido, desalinhamento visível ou comportamento inconsistente.
- Não liberar piloto real enquanto o app não estiver totalmente concluído em funcionalidades, layout, permissões e dados controlados.

---

## 3. Preferências fortes de código e edição do projeto

Warley prefere que o projeto seja conduzido com base em código e arquivos versionados sempre que possível.

Regras obrigatórias:

- Sempre que possível, **editar os códigos/arquivos do projeto**, em vez de orientar apenas alterações manuais soltas.
- Para Power Apps, preferir blocos completos de YAML ou fórmulas completas.
- Evitar instruções do tipo “substitua só o final” ou “adicione esse pedaço”.
- Quando alterar uma fórmula, entregar a fórmula completa atualizada.
- Quando alterar YAML, entregar o bloco completo do controle/container afetado.
- Quando reconstruir uma seção, entregar YAML completo da seção, não fragmentos pequenos.
- Se houver risco de divergência, pedir o YAML atual do controle ou da seção antes de gerar substituição.
- Preferir nomes claros e sem sufixos automáticos `_1`, `_2`, `_3` após colagens.
- Orientar Warley a renomear componentes colados quando necessário.
- Usar o repositório local como referência:

```text
C:\Projetos\Livro-Ocorrencias-brigada
```

Arquivos importantes para código do Power Apps:

```text
powerapps/source/scrDashboard.pa.yaml
powerapps/source/snapshots/
```

Regra prática:

```text
Power Apps Studio = fonte visual oficial.
powerapps/source/scrDashboard.pa.yaml = espelho versionado para histórico, recuperação e geração de blocos.
```

---

## 4. Regras para fórmulas Power Apps e YAML

### 4.1 Fórmulas na barra do Power Apps

Quando Warley for colar diretamente na barra de fórmula do Power Apps:

- Não iniciar com `=`.
- Usar ponto e vírgula `;` como separador.
- Usar `;;` para encadear ações.
- Entregar a fórmula completa.

Exemplo:

```powerfx
Set(varMenuSelecionado; "Dashboard");;
Set(varProcessandoLivroPlantao; false)
```

### 4.2 Fórmulas dentro do YAML

Quando a fórmula estiver dentro do YAML exportado/colado no Power Apps:

- Usar `=` no início da propriedade.
- Manter o padrão aceito pelo YAML do Power Apps.
- Em muitos trechos YAML já validados, as fórmulas usam vírgulas.
- Antes de converter separadores, respeitar o padrão do bloco recebido.

Exemplo YAML:

```yaml
Text: ="Livro de Ocorrências Digital da Brigada de Incêndio"
```

### 4.3 Entrega de instruções

Usar o padrão prático:

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

---

## 5. Regras obrigatórias para blocos PowerShell no VS Code

Warley quer que os blocos rodem sem interrupção no terminal do VS Code.

Regras obrigatórias:

- O bloco deve rodar de ponta a ponta sem pedir `Enter`.
- Não usar `Read-Host`.
- Não usar `Pause`.
- Não usar comandos que deixem o terminal aguardando interação.
- Não usar `exit`, pois pode fechar o terminal integrado do VS Code.
- Usar `return` dentro de `& { ... }` quando for necessário interromper com segurança.
- Preferir sempre envolver o script em:

```powershell
& {
    # comandos
}
```

- Evitar `Resolve-Path` para arquivo que ainda será criado.
- Usar `Join-Path` para montar caminhos.
- Usar `[System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)` para gravar arquivos.
- Se o bloco gerar diagnóstico, relatório ou status, copiar automaticamente para a área de transferência com `Set-Clipboard`.
- Todo bloco de diagnóstico no VS Code deve terminar com relatório copiado para o clipboard.
- Todo bloco de commit/registro deve terminar com relatório final copiado para o clipboard.

Modelo obrigatório de relatório final:

```text
PENDENCIAS=NAO
MOTIVO=Vnnn - descrição

STATUS_GIT=
...

ULTIMO_COMMIT=
...

ARQUIVOS_ATUALIZADOS=
...

PROXIMA_ETAPA=...
```

Se houver pendência:

```text
PENDENCIAS=SIM
MOTIVO=...

STATUS_GIT=
...

ACAO=...
```

O relatório deve ser exibido no terminal e também copiado com:

```powershell
$relatorio | Set-Clipboard
```

---

## 6. Regra para diagnósticos no VS Code

Quando Warley pedir diagnóstico, conferir status ou análise local, gerar bloco PowerShell que:

1. Entre no repositório.
2. Colete o diagnóstico necessário.
3. Não altere arquivos, salvo se o pedido for de correção.
4. Não faça perguntas durante a execução.
5. Copie o resultado inteiro para o clipboard.
6. Mostre o resultado no terminal.

Exemplo de estrutura:

```powershell
& {
    $ErrorActionPreference = "Stop"
    $repo = "C:\Projetos\Livro-Ocorrencias-brigada"
    Set-Location $repo

    $statusGit = git status --short
    $ultimoCommit = git log -1 --oneline

    $relatorio = @"
PENDENCIAS=NAO
MOTIVO=Diagnostico local do projeto

STATUS_GIT=
$statusGit

ULTIMO_COMMIT=
$ultimoCommit
"@

    $relatorio | Set-Clipboard
    Write-Host $relatorio -ForegroundColor Cyan
}
```

Não usar `Read-Host` em diagnóstico. Se for necessário escolher caminho, perguntar antes de entregar o bloco.

---

## 7. Padrão de versionamento Git

Padrão de commits:

```text
V001 - descrição curta da etapa
V002 - descrição curta da etapa
V003 - descrição curta da etapa
```

O histórico deve seguir o padrão `Vnnn - descrição`.

Ao registrar uma etapa validada:

1. Conferir `git status --short`.
2. Se houver pendência inesperada, parar e copiar relatório com `PENDENCIAS=SIM`.
3. Atualizar documentação adequada.
4. Atualizar `docs/00_controle_do_projeto.md`.
5. Atualizar YAML/snapshot quando houver mudança relevante no app.
6. Fazer commit.
7. Fazer push.
8. Copiar relatório final para o clipboard.

Sempre que uma etapa técnica for concluída, seguir a regra documental do projeto:

- registrar decisão/validação em `docs/powerapps`, `sharepoint` ou `docs`;
- atualizar `docs/00_controle_do_projeto.md`;
- gerar commit com padrão `Vnnn - descrição`;
- manter índice atualizado quando houver reorganização documental.

---

## 8. Estado Git confirmado na troca de chat

Último relatório informado por Warley:

```text
PENDENCIAS=NAO
MOTIVO=V091 - registra inventario funcional antes de piloto

STATUS_GIT=

ULTIMO_COMMIT=
919dc70 V091 - registra inventario funcional antes de piloto

ARQUIVOS_ATUALIZADOS=
docs/00_controle_do_projeto.md

PROXIMA_ETAPA=V092 - Revisar e concluir criacao/selecao real de Plantao
```

---

## 9. Decisão estratégica V066 — fluxo contínuo do Livro do Plantão

A partir da V066, o projeto passou a priorizar o preenchimento contínuo do Livro do Plantão.

Decisão:

```text
Livro do Plantão como tela principal de preenchimento diário e contínuo.
```

Motivo:

- o líder de equipe está acostumado ao livro físico em sequência;
- alternar entre muitas telas pode gerar resistência operacional;
- o app deve permitir que o líder role a tela e preencha o livro inteiro em ordem.

Estrutura do fluxo contínuo:

1. Cabeçalho do Plantão.
2. Recebimento do Serviço.
3. Equipe do Plantão.
4. Conferência de Viaturas e Materiais.
5. Inspeção de Rotina.
6. POTS Revisados.
7. Ocorrências do Plantão.
8. Pendências Operacionais.
9. Revisão e Finalização.

Regra de navegação por teclado:

- TAB avança para o próximo campo;
- SHIFT + TAB retorna ao campo anterior;
- a ordem deve seguir a ordem operacional do livro.

---

## 10. Decisão V091 — sem piloto antes do app completo

Na V091, Warley decidiu que não haverá piloto real agora.

Regra:

```text
Só liberar piloto real depois que o app estiver totalmente concluído em funcionalidades, layout, permissões, dados controlados e validação interna.
```

Situação consolidada:

- há um MVP operacional parcial do Livro do Plantão;
- o núcleo funcional do Livro do Plantão foi validado;
- o app completo ainda não está finalizado;
- as áreas restantes precisam ser concluídas antes de qualquer compartilhamento real.

Áreas pendentes antes de piloto:

| Área | Situação |
|---|---|
| Criação/seleção real de plantões | Pendente |
| Equipe do Plantão | Parcial |
| Ocorrências | Parcial |
| Pendências Operacionais | Parcial |
| POTS | Parcial |
| Histórico geral | Pendente |
| Relatórios | Pendente |
| Administração | Pendente |
| Layout global | Parcial |
| Permissões reais no SharePoint | Parcial |
| Dados de teste | Pendente |
| Roteiro de piloto | Não iniciado |

Próximo caminho recomendado:

| Versão | Etapa sugerida |
|---|---|
| V092 | Revisar e concluir criação/seleção real de Plantão |
| V093 | Concluir Equipe do Plantão |
| V094 | Concluir Ocorrências |
| V095 | Concluir Pendências |
| V096 | Concluir POTS |
| V097 | Concluir Histórico e Relatórios |
| V098 | Concluir Administração |
| V099 | Revisar layout global do app completo |
| V100 | Limpeza técnica, dados de teste e validação final interna |
| V101 | Preparar compartilhamento restrito e roteiro de piloto |

---

## 11. Estado funcional validado até V091

### 11.1 Núcleo do Livro do Plantão concluído/validado

Até a V090/V091, está validado:

- app executando fora do modo edição;
- identificação de perfil no cabeçalho;
- regra de Administrador;
- regra de Supervisor;
- regra de Líder responsável;
- regra de Operador;
- bloqueio por perfil;
- bloqueio após finalização;
- salvar rascunho;
- finalização com confirmação;
- tratamento básico de erro;
- reabertura com justificativa;
- histórico independente de reabertura;
- contador de reaberturas;
- preservação de dados de finalização anterior;
- atualização visual após reabertura sem F5;
- validação no app executado/publicado.

### 11.2 Ajuste de perfil no cabeçalho

Foi criado indicador visual no cabeçalho global:

```text
Perfil de acesso: <Perfil> | Usuário: <Nome do usuário>
```

Exemplo:

```text
Perfil de acesso: Administrador | Usuário: Warley da Silva Conceição
```

Foi abandonada a exibição “Líder responsável” nesse ponto porque gerava ambiguidade quando o mesmo usuário era testado com perfil Operador ou Supervisor.

### 11.3 Publicação/teste do app

Na V090:

- o app foi testado fora do modo edição;
- não foi compartilhado com a organização;
- Reproduzir/Executar abriu nova aba/janela de autenticação, comportamento aceito como normal;
- perfis Administrador, Líder e Operador foram validados;
- reabertura passou a atualizar botões sem precisar de F5.

---

## 12. Histórico resumido de versões recentes

```text
V066 - registra decisão do fluxo contínuo do Livro do Plantão
V067 - registra layout base do Livro do Plantão em fluxo contínuo
V068 - registra campos iniciais do Cabeçalho do Plantão
V069 - registra Recebimento do Serviço
V070 - registra Equipe do Plantão
V071 - registra Conferência de Viaturas e Materiais
V072 - registra Inspeção de Rotina
V073 - corrige campo multiline da Conferência de Viaturas e Materiais
V074 - registra POTS Revisados
V075 - registra snapshot YAML atual
V076 - registra Ocorrências do Plantão
V077 - registra Pendências Operacionais
V078 - registra Revisão e Finalização
V079 - padroniza layout geral do Livro do Plantão em fluxo contínuo
V080 - registra criação das colunas operacionais em Plantoes
V081 - configura campos e padroniza layout final do Livro do Plantão
V082 - implementa salvamento e finalização do Livro do Plantão
V083 - cria confirmação de finalização e tratamento de erro
V084 - reorganiza documentação e registra decisão de reabertura
V085 - registra estrutura manual de histórico de reabertura
V086 - ajusta reabertura com histórico e contador
V087 - valida regras de permissão para reabertura
V088 - refina permissão do Líder responsável na reabertura
V089 - revisa regras de edição, finalização e bloqueio por perfil
V090 - valida fluxo completo no app publicado
V091 - registra inventário funcional antes de piloto
```

Commits recentes confirmados:

```text
270a951 V090 - valida fluxo completo no app publicado
919dc70 V091 - registra inventario funcional antes de piloto
```

---

## 13. SharePoint / Microsoft Lists

Site oficial:

```text
https://etnweb.sharepoint.com/sites/BrigadaIncendio
```

Listas criadas/conectadas principais:

```text
Usuarios
Plantoes
EquipePlantao
LocaisOperacionais
PendenciasOperacionais
Ocorrencias
HistoricoReaberturasPlantao
```

### 13.1 Plantoes

Campos importantes já usados no app:

```text
CodigoPlantao
DataPlantao
Turno
PlantaoExtra
PostoServico
StatusLivro
PassagemServico
ResumoOperacional
DataAbertura
DataFinalizacao
FinalizadoPor
JustificativaReabertura
DataUltimaReabertura
ReabertoPorUltimo
QuantidadeReaberturas
Observacoes
LiderEscalado
LiderResponsavelAtual
HouveSubstituicaoLider
LiderSubstituido
MotivoSubstituicaoLider
DataHoraAssuncaoLider
ObservacoesSubstituicaoLider
```

### 13.2 HistoricoReaberturasPlantao

Lista criada para histórico independente de reaberturas.

Campos principais:

```text
Title
PlantaoId
CodigoPlantao
DataHoraReabertura
ReabertoPor
Justificativa
StatusAnterior
StatusNovo
DataFinalizacaoAnterior
FinalizadoPorAnterior
NumeroReabertura
ObservacoesTecnicas
```

### 13.3 Usuarios

Usada para identificar perfil de acesso do usuário no app.

Campos relevantes:

```text
Email
UsuarioMicrosoft
Matricula
Funcao
PerfilAcesso
PostoServico
Ativo
```

Perfis usados:

```text
Administrador
Supervisor
Lider
Operador
Leitura
```

---

## 14. Regras de permissão atuais do Livro do Plantão

Regra validada no Livro do Plantão:

| Perfil | Edita | Salva | Finaliza | Reabre |
|---|---:|---:|---:|---:|
| Administrador | Sim | Sim | Sim | Sim |
| Supervisor | Sim | Sim | Sim | Sim |
| Lider responsável | Sim | Sim | Sim | Sim, apenas próprio plantão |
| Operador | Não | Não | Não | Não |
| Leitura | Não | Não | Não | Não |

Observação:

- Essa regra foi validada no núcleo do Livro do Plantão.
- Ainda precisa ser revisada/aplicada nas demais áreas do app: Ocorrências, Pendências, POTS, Histórico, Relatórios e Administração.

---

## 15. Observações técnicas importantes já aprendidas

- Microsoft Lists pode apresentar cache/filtro visual; se item não aparecer, testar limpar/trocar filtro antes de concluir que o Patch falhou.
- Publicar/executar o app não significa compartilhar com toda a organização.
- Não usar o botão Compartilhar até a fase futura de piloto.
- No Power Apps, Reproduzir/Executar pode abrir nova aba e janela de autenticação.
- Ao colar fórmula na barra de fórmula, não usar `=` inicial.
- Ao colar fórmula dentro de YAML, usar `=` conforme a propriedade.
- Em registros de SharePoint do tipo Pessoa, usar estrutura compatível com `SPListExpandedUser` quando necessário.
- Ao atualizar variáveis depois de Patch, forçar estado visual imediatamente para evitar depender de F5.

---

## 16. Próxima etapa — V092

Próxima etapa oficial:

```text
V092 - Revisar e concluir criação/seleção real de Plantão
```

Objetivo:

- sair da dependência de plantão fictício fixo;
- revisar como o app escolhe o plantão atual;
- permitir criação/seleção controlada de plantão;
- evitar duplicidade de plantão aberto quando aplicável;
- definir regra por data, turno e posto;
- manter compatibilidade com o fluxo contínuo já validado;
- não quebrar salvamento/finalização/reabertura já validados.

A V092 deve começar com diagnóstico do estado atual, especialmente:

```text
App.OnStart
scrDashboard.OnVisible
varPlantaoAtual
varMenuSelecionado
carregamento de Usuarios
uso de CodigoPlantao fixo PL-2026-06-08-DIA-BI
controles existentes de Cabeçalho do Plantão
status atual de Plantoes no SharePoint
```

Primeiro bloco recomendado no novo chat:

```text
V092 - Bloco 1: Diagnóstico da seleção atual do plantão
```

Esse diagnóstico deve ser preferencialmente por VS Code/PowerShell e copiar o resultado para o clipboard, sem pedir Enter.

---

## 17. Bloco modelo para diagnóstico inicial da V092

Quando Warley pedir `proximo`, entregar um bloco parecido com este, ajustado conforme o contexto:

```powershell
& {
    $ErrorActionPreference = "Stop"

    $repo = "C:\Projetos\Livro-Ocorrencias-brigada"
    Set-Location $repo

    $arquivosParaVerificar = @(
        "powerapps/source/scrDashboard.pa.yaml",
        "docs/00_controle_do_projeto.md",
        "docs/07_regras_operacionais_livro_plantao.md"
    )

    $linhas = New-Object System.Collections.Generic.List[string]
    $linhas.Add("DIAGNOSTICO=V092 - selecao atual do plantao")
    $linhas.Add("")
    $linhas.Add("REPO=$repo")
    $linhas.Add("")
    $linhas.Add("STATUS_GIT=")
    $linhas.Add((git status --short | Out-String).TrimEnd())
    $linhas.Add("")
    $linhas.Add("ULTIMO_COMMIT=")
    $linhas.Add((git log -1 --oneline | Out-String).TrimEnd())
    $linhas.Add("")

    foreach ($arquivo in $arquivosParaVerificar) {
        $path = Join-Path $repo $arquivo
        $linhas.Add("ARQUIVO=$arquivo")
        $linhas.Add("EXISTE=$([System.IO.File]::Exists($path))")
        $linhas.Add("")
    }

    $yaml = Join-Path $repo "powerapps/source/scrDashboard.pa.yaml"
    if (Test-Path $yaml) {
        $conteudo = Get-Content $yaml -Raw
        $padroes = @(
            "varPlantaoAtual",
            "PL-2026-06-08-DIA-BI",
            "App.OnStart",
            "OnVisible",
            "CodigoPlantao",
            "StatusLivro",
            "LiderResponsavelAtual"
        )

        foreach ($padrao in $padroes) {
            $linhas.Add("BUSCA=$padrao")
            $matches = Select-String -Path $yaml -Pattern $padrao -SimpleMatch
            if ($matches) {
                foreach ($m in $matches | Select-Object -First 20) {
                    $linhas.Add(("Linha {0}: {1}" -f $m.LineNumber, $m.Line.Trim()))
                }
            } else {
                $linhas.Add("NAO_ENCONTRADO")
            }
            $linhas.Add("")
        }
    }

    $relatorio = $linhas -join "`n"
    $relatorio | Set-Clipboard

    Write-Host "RELATORIO COPIADO PARA A AREA DE TRANSFERENCIA:" -ForegroundColor Green
    Write-Host ""
    Write-Host $relatorio -ForegroundColor Cyan
}
```

Esse bloco é modelo. No novo chat, ajustar se houver arquivos novos ou se Warley anexar o YAML mais recente.

---

## 18. Regra final para o assistente no novo chat

Quando este prompt for anexado em um novo chat:

1. Ler este prompt como memória operacional principal.
2. Não refazer decisões já registradas.
3. Não sugerir piloto real agora.
4. Continuar da V092.
5. Priorizar edição de código/arquivos do projeto sempre que possível.
6. Garantir que diagnósticos no VS Code copiem resultado para o clipboard.
7. Garantir que blocos PowerShell rodem sem pedir Enter ou interação.
8. Entregar fórmulas e YAML completos.
9. Registrar cada etapa validada no Git com relatório final copiado para o clipboard.

