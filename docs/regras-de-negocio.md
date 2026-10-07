# Regras de negócio — exemplos

Este documento resume regras utilizadas no projeto sem expor dados comerciais privados.

## Ordem de serviço

Fluxo principal:

`Orçamento → Aprovado → Enviado ao laboratório → Em montagem → Recebido → Entregue`

Também existe o estado `Cancelada`, preservando o histórico da operação.

## Aprovação

Uma venda somente pode avançar para aprovação quando atende aos requisitos comerciais definidos pela operação, incluindo o percentual mínimo de pagamento registrado.

## Edição

Alguns campos deixam de ser livremente editáveis depois que a OS entra em etapas críticas, evitando alterações que criem divergência entre sistema, laboratório e pedido físico.

## Pagamentos

Uma venda pode possuir mais de um lançamento de pagamento, permitindo registrar forma, bandeira, parcelas, data e valor.

## Impressão

A informação exibida depende do destinatário:

- **via do cliente:** informações comerciais e de pagamento pertinentes;
- **via do laboratório:** informações técnicas para produção, sem exposição desnecessária de valores comerciais.

## Receita óptica

A estrutura permite representar dados de visão simples e multifocal, incluindo parâmetros por olho, DNP/DP e adição, com validações de consistência.
