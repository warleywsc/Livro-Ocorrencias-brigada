# Bloqueio de Autenticacao PnP

Projeto: Livro de Ocorrencias Digital da Brigada de Incendio
Data: 08/06/2026
Status: Bloqueio identificado

## 1. Situacao

O PowerShell 7.6.2 e o modulo PnP.PowerShell 3.2.0 foram instalados e reconhecidos corretamente.

O teste de conexao com o site SharePoint abaixo falhou na etapa de autenticacao:

https://etnweb.sharepoint.com/sites/SGES/

## 2. Resultado observado

- PnP.PowerShell carregado com sucesso.
- Connect-PnPOnline falhou.
- Mensagem relacionada a necessidade de ClientId de App Registration no Entra ID.
- Erro final: Specified method is not supported.

## 3. Decisao

- Nao avancar com criacao automatizada de listas via PnP neste momento.
- Nao tentar criar listas automaticamente sem ClientId autorizado.
- Manter a criacao manual das listas como caminho principal.
- Deixar PnP como opcao futura caso exista App Registration institucional autorizado.

## 4. Proxima decisao

Decidir se as listas do Livro de Ocorrencias serao criadas no site SGES existente ou em um site SharePoint separado.
