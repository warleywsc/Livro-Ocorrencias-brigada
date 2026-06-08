# Componentes Reutilizáveis

## 1. AppShell

Estrutura global das telas autenticadas.

Deve conter:

- Header
- Sidebar
- Área principal
- Footer

Regras:

- Footer no fluxo normal.
- Sem barra fixa inferior.
- Sem sobreposição de botões.
- Sem duplicação do bloco de usuário no menu lateral.

## 2. Header

Deve conter:

- Nome curto do sistema.
- Busca.
- Alternância de tema.
- Alto contraste.
- Acessibilidade.
- Identificação do usuário.

## 3. Sidebar

Deve conter somente o menu oficial:

- Dashboard
- Livro do Plantão
- Ocorrências
- Pendências
- POTs e Ciência
- Histórico
- Relatórios
- Administração

## 4. Footer

Deve conter:

- Eletronuclear - Brigada de Incêndio.
- Suporte.
- Termos de Uso.
- Privacidade.

Regras:

- Nunca fixed.
- Nunca sticky.
- Nunca absolute.
- Nunca sobreposto.

## 5. ShiftSummary

Resumo do plantão atual:

- Data.
- Turno.
- Unidade.
- Líder.
- Status.

## 6. StatusBadge

Componente de status.

Regras:

- Sempre ter texto.
- Não depender somente de cor.
- Pode ter ícone complementar.

## 7. ActionButtons

Botões finais de ação.

Regras:

- Ficar antes do footer.
- Botão primário destacado.
- Botão secundário discreto.
- Nunca em barra fixa inferior.

## 8. Card

Bloco visual para indicadores, atalhos e resumos.

## 9. SectionCard

Bloco visual para seções maiores.

## 10. FilterBar

Barra de filtros reutilizável.

Filtros comuns:

- Data.
- Turno.
- Unidade.
- Status.
- Tipo.
- Prioridade.

## 11. TimelineCard

Componente para histórico de eventos.

## 12. FormSection

Componente para agrupamento de campos de formulário.
