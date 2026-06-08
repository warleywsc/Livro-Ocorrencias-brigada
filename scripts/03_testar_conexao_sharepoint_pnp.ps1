<#
Projeto: Livro de Ocorrências Digital da Brigada de Incêndio
Arquivo: scripts/03_testar_conexao_sharepoint_pnp.ps1
Finalidade: testar conexão com o site SharePoint usando PnP.PowerShell antes de criar listas.
Data de criação: 07/06/2026

Uso:
.\scripts\03_testar_conexao_sharepoint_pnp.ps1 -SiteUrl "https://SEU_TENANT.sharepoint.com/sites/SEU_SITE"
#>

param(
    [Parameter(Mandatory = $true)]
    [string]$SiteUrl
)

$ErrorActionPreference = "Stop"
$relatorio = @()

function Add-Relatorio {
    param([string]$Texto)
    $script:relatorio += $Texto
    Write-Host $Texto
}

try {
    Add-Relatorio "TESTE_CONEXAO_SHAREPOINT=INICIADO"
    Add-Relatorio "SITE_URL=$SiteUrl"
    Add-Relatorio "DATA_TESTE=$(Get-Date -Format 'dd/MM/yyyy HH:mm:ss')"
    Add-Relatorio ""

    $modulo = Get-Module -ListAvailable -Name PnP.PowerShell

    if (-not $modulo) {
        throw "PnP.PowerShell nao encontrado."
    }

    Import-Module PnP.PowerShell -ErrorAction Stop

    Add-Relatorio "PNP=OK"
    Add-Relatorio "VERSAO_PNP=$((Get-Module -ListAvailable -Name PnP.PowerShell | Select-Object -First 1).Version)"
    Add-Relatorio ""

    Add-Relatorio "CONECTANDO=SIM"
    Connect-PnPOnline -Url $SiteUrl -Interactive

    $web = Get-PnPWeb
    Add-Relatorio "CONEXAO=OK"
    Add-Relatorio "TITULO_SITE=$($web.Title)"
    Add-Relatorio "URL_SITE=$($web.Url)"
    Add-Relatorio ""

    $listas = Get-PnPList | Select-Object -ExpandProperty Title
    Add-Relatorio "LISTAS_ENCONTRADAS="
    $listas | ForEach-Object { Add-Relatorio "- $_" }

    Add-Relatorio ""
    Add-Relatorio "RESULTADO=TESTE_CONCLUIDO"
}
catch {
    Add-Relatorio "RESULTADO=ERRO"
    Add-Relatorio "ERRO=$($_.Exception.Message)"
}

Add-Relatorio ""
Add-Relatorio "OBSERVACAO=Relatorio copiado para a area de transferencia."

$saida = $relatorio -join "`r`n"
$saida | Set-Clipboard
$saida
