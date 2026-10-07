/**
 * Exemplo sanitizado para demonstração pública.
 * Não é uma cópia do código de produção.
 */

type StatusOS =
  | "orcamento"
  | "aprovado"
  | "enviado_laboratorio"
  | "em_montagem"
  | "recebido"
  | "entregue"
  | "cancelada";

const nextStatus: Partial<Record<StatusOS, StatusOS>> = {
  orcamento: "aprovado",
  aprovado: "enviado_laboratorio",
  enviado_laboratorio: "em_montagem",
  em_montagem: "recebido",
  recebido: "entregue",
};

export function canAdvance(current: StatusOS, target: StatusOS) {
  if (target === "cancelada" && current !== "entregue") return true;
  return nextStatus[current] === target;
}

export function canApprove(total: number, paid: number) {
  if (total <= 0) return false;
  return paid / total >= 0.5;
}
