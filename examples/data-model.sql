-- Modelo reduzido e sanitizado para demonstração.
-- Não representa o schema integral de produção.

create table clientes (
  id uuid primary key,
  nome text not null,
  telefone text not null,
  created_at timestamptz not null default now()
);

create table vendas_os (
  id uuid primary key,
  cliente_id uuid not null references clientes(id),
  numero_os bigint not null unique,
  status text not null,
  total numeric(12,2) not null default 0,
  created_at timestamptz not null default now()
);

create table pagamentos (
  id uuid primary key,
  venda_os_id uuid not null references vendas_os(id),
  forma text not null,
  valor numeric(12,2) not null check (valor > 0),
  data_pagamento date not null
);

create table historico_status_os (
  id uuid primary key,
  venda_os_id uuid not null references vendas_os(id),
  status text not null,
  alterado_em timestamptz not null default now()
);

create index idx_vendas_cliente on vendas_os(cliente_id);
create index idx_vendas_status on vendas_os(status);
create index idx_pagamentos_venda on pagamentos(venda_os_id);
