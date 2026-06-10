# Validacao da Area Equipe do Plantao

Projeto: Livro de Ocorrencias Digital da Brigada de Incendio
Data: 10/06/2026
Status: Validado

## 1. Objetivo

Registrar a validacao da area Equipe do Plantao dentro da tela Livro do Plantao no Power Apps.

## 2. Estrutura validada

A area Equipe do Plantao foi criada dentro da tela Livro do Plantao:

- scrDashboard
- ScreenContainer1
- BottomContainer1
- MainContainer1
- ctnLivroPlantao
- ctnLivroPlantaoPassagemServico
- ctnLivroPlantaoEquipe
- lblLivroPlantaoEquipeTitulo
- galLivroPlantaoEquipe
- lblGalEquipeResumo
- lblLivroPlantaoEquipeVazia

## 3. Configuracao validada

A galeria foi vinculada a lista SharePoint EquipePlantao.

Formula funcional usada em Items:

FirstN(
    Filter(
        EquipePlantao;
        Plantao.Id = varPlantaoAtual.ID
    );
    5
)

Foi adotado um rotulo unico dentro da galeria para exibir integrante, funcao, posto e presenca.

## 4. Conteudo exibido na validacao

A area Equipe do Plantao exibiu corretamente integrantes ficticios vinculados ao plantao atual:

- Lider Teste 01 | Lider | Brigada de Incendio | Presente
- Bombeiro Teste 01 | Bombeiro | Angra 1 | Presente

## 5. Ajustes visuais validados

- Os titulos Livro do Plantao, Passagem de Servico e Equipe do Plantao foram destacados.
- Os cards Passagem de Servico e Equipe do Plantao foram alinhados visualmente.
- A mensagem de lista vazia foi ocultada quando havia integrantes cadastrados.
- A galeria permaneceu dentro do card Equipe do Plantao.
- A troca entre Dashboard e Livro do Plantao continuou funcionando.
- Header e menu lateral permaneceram corretos.
- A opcao POTS permaneceu no menu lateral.
- Nao ha footer nesta fase, conforme decisao operacional atual.
- Nenhum dado real sensivel foi usado nesta etapa.

## 6. Observacoes

- Os avisos amarelos de delegacao/consulta continuam conhecidos e nao bloquearam a etapa.
- A tratativa dos avisos deve ocorrer antes de uso com dados reais em volume.

## 7. Proxima melhoria diagnosticada

Preparar a area Ocorrencias do Plantao dentro da tela Livro do Plantao, reutilizando a lista Ocorrencias e filtrando pelo plantao atual.
