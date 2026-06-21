# V093G - Roteiro de teste real do Livro do Plantão

DATA_HORA=2026-06-20 23:06:28

## Objetivo

Validar no Power Apps Studio o fluxo real do Livro do Plantão, sem alterar YAML manualmente.

## Premissas

- O Power Apps Studio é a fonte oficial atual.
- O arquivo local foi sincronizado na V093F.
- Não colar os patches gerados na V093E.
- Executar o teste com dados controlados.
- Se criar plantão de teste, usar identificação clara no contexto do teste e evitar confundir com registro operacional real.

## Checklist de teste

### 1. Acessar o Livro do Plantão

- [ ] Abrir o app no Power Apps Studio.
- [ ] Executar o app em modo de pré-visualização.
- [ ] Clicar no menu "Livro do Plantão".
- [ ] Confirmar que o fluxo contínuo aparece com os blocos 0 a 9.
- [ ] Confirmar que não há erro vermelho imediato ao abrir a tela.

### 2. Carregar plantão existente

- [ ] No bloco 0, selecionar Data, Turno, Posto de Serviço e Plantão Extra.
- [ ] Clicar em "Carregar Plantão".
- [ ] Confirmar se aparece mensagem de sucesso quando existir plantão.
- [ ] Confirmar se aparece mensagem de aviso quando não existir plantão.
- [ ] Confirmar se o cabeçalho atualiza Código, Data, Turno, Posto, Status e Líder.

### 3. Criar ou carregar plantão

- [ ] Selecionar uma combinação controlada para teste.
- [ ] Clicar em "Criar / Carregar".
- [ ] Se já existir, confirmar que o app carrega o plantão existente.
- [ ] Se não existir, confirmar que o app cria e carrega o plantão.
- [ ] Confirmar que o status fica "Em preenchimento".
- [ ] Confirmar que o líder escalado/responsável é preenchido.

### 4. Atualizar dados

- [ ] Clicar em "Atualizar".
- [ ] Confirmar mensagem de sucesso.
- [ ] Confirmar que o app não perde o plantão carregado.

### 5. Editar campos do fluxo

- [ ] Alterar Passagem de Serviço.
- [ ] Alterar Resumo Operacional.
- [ ] Alterar status de Viaturas/Materiais/Conferência.
- [ ] Alterar observações de Conferência.
- [ ] Alterar status de Inspeção.
- [ ] Alterar observações de Inspeção.
- [ ] Alterar status de POTS.
- [ ] Alterar observações de POTS.
- [ ] Alterar campos da Revisão e Finalização.

### 6. Salvar rascunho

- [ ] Clicar em "Salvar".
- [ ] Confirmar mensagem de sucesso.
- [ ] Confirmar que os dados permanecem após clicar em "Atualizar".
- [ ] Confirmar que os dados permanecem após sair e voltar para o Livro do Plantão.

### 7. Finalizar

- [ ] Ajustar pré-condições necessárias para finalização.
- [ ] Clicar em "Finalizar".
- [ ] Confirmar que abre a confirmação de finalização.
- [ ] Cancelar uma vez e confirmar que não finaliza.
- [ ] Abrir novamente e confirmar a finalização.
- [ ] Confirmar que o status muda para "Finalizado".
- [ ] Confirmar que os campos ficam bloqueados para edição, conforme permissão.

### 8. Reabrir

- [ ] Clicar em "Reabrir".
- [ ] Confirmar que abre o modal de justificativa.
- [ ] Tentar confirmar sem justificativa.
- [ ] Confirmar que o app exige justificativa.
- [ ] Informar justificativa.
- [ ] Confirmar reabertura.
- [ ] Confirmar que o status volta para "Em preenchimento".
- [ ] Confirmar que o histórico de reabertura foi registrado.

### 9. Resultado visual

- [ ] Confirmar que nenhum bloco ficou cortado.
- [ ] Confirmar que rolagem do Livro do Plantão funciona.
- [ ] Confirmar que botões permanecem visíveis e alinhados.
- [ ] Confirmar que não surgiram controles duplicados com sufixo _1, _2 etc.

## Resultado do teste

PENDENCIAS=

OBSERVACOES=

PROXIMA_ETAPA=
Se aprovado: registrar V093G como validação real concluída.
Se houver falha: corrigir apenas o ponto falho, preservando o YAML sincronizado da V093F.
