# Validacao Inicial do Power Apps

Projeto: Livro de Ocorrencias Digital da Brigada de Incendio
Data: 09/06/2026
Status: Validacao inicial realizada

## 1. App criado

- App Canvas criado no Power Apps.
- Nome: Livro de Ocorrencias Digital da Brigada de Incendio.
- Formato: Tablet.
- Template inicial: Barra lateral.
- Uso principal previsto: desktop/notebook.

## 2. Fontes de dados conectadas

- Usuarios
- Plantoes
- EquipePlantao
- LocaisOperacionais
- PendenciasOperacionais
- Ocorrencias

## 3. Tela inicial

- Screen1 renomeada para scrDashboard.

## 4. App.OnStart configurado

Formula usada:

Set(varMenuSelecionado; "Dashboard");;
Set(varPlantaoAtual; LookUp(Plantoes; CodigoPlantao = "PL-2026-06-08-DIA-BI"))

## 5. Validacoes realizadas

- varPlantaoAtual carregou corretamente o plantao ficticio.
- Dashboard exibiu: Plantao atual PL-2026-06-08-DIA-BI.
- Contagem de pendencias abertas retornou 1.
- Contagem de ocorrencias do plantao retornou 1.

## 6. Observacoes

- Foram exibidos avisos amarelos nos rotulos de contagem, possivelmente relacionados a delegacao.
- Os avisos nao bloquearam a validacao inicial.
- Ajustes de delegacao/consulta devem ser tratados antes de dados reais em volume.

## 7. Proxima etapa

- Organizar AppShell visual.
- Padronizar Header, Sidebar, MainContainer e Footer.
- Transformar rotulos de teste em cards do Dashboard.
