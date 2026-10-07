# Roadmap SENSO V2

## 1. Mobile + desktop

A V1 foi construída com forte prioridade para uso móvel/PWA. A V2 deve adotar um sistema de layout responsivo desde a base:

- navegação adequada a desktop e mobile;
- maior aproveitamento horizontal em telas grandes;
- componentes compartilhados em vez de telas duplicadas;
- preservação da agilidade de uso em iPhone/PWA.

## 2. Revisão da arquitetura de dados

Objetivos:

- diminuir o acoplamento direto entre componentes e Supabase;
- concentrar acesso a dados em uma camada própria;
- separar autenticação da lógica de domínio sempre que possível;
- revisar schema, constraints, índices e relacionamentos;
- manter regras importantes no banco quando fizer sentido;
- facilitar testes e futuras migrações.

## 3. Preservar as regras consolidadas

A evolução visual e arquitetural não deve eliminar as regras operacionais já validadas na V1, especialmente histórico de status, bloqueios, regras de aprovação, impressão por destinatário e tratamento de cancelamentos.
