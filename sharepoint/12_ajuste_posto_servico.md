# Ajuste de Modelagem — Posto de Servico

Projeto: Livro de Ocorrencias Digital da Brigada de Incendio
Data: 08/06/2026
Status: Ajuste operacional registrado

## 1. Decisao

Substituir o conceito anterior de PostoServico pelo conceito operacional correto:

Posto de Servico

Nome tecnico recomendado para colunas:

PostoServico

## 2. Valores oficiais

Os valores oficiais de Posto de Servico sao:

- Angra 1
- Angra 2
- Angra 3
- Brigada de Incendio

## 3. Regra operacional

Rotacao de postos nao e valor de Posto de Servico.

Rotacao de postos e uma regra operacional de distribuicao da equipe.

Regras informadas:

- Bombeiros rodam todos os postos, com 1 posto em cada dia de servico.
- Brigadistas atuam em Angra 1 e Angra 2 em dias uteis e horario comercial.
- Lideres ficam apenas na Brigada de Incendio.

## 4. Impacto na modelagem

Este ajuste afeta principalmente:

- Usuarios
- Plantoes
- EquipePlantao
- Ocorrencias
- PendenciasOperacionais
- Dashboard Operacional
- Historico e Relatorio
- Administracao

## 5. Orientacao para SharePoint

Na lista Usuarios, a coluna correta deve ser:

PostoServico

Descricao:

Posto de Servico padrao do usuario, quando aplicavel.

Tipo:

Escolha

Opcoes:

- Angra 1
- Angra 2
- Angra 3
- Brigada de Incendio

Obrigatorio:

Nao

## 6. Observacao

Referencias anteriores a PostoServico devem ser tratadas como substituidas por PostoServico.

Referencias a Unidade Central devem permanecer apenas como dado ficticio historico do prototipo visual aprovado, nao como valor oficial de Posto de Servico.

