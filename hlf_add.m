function [S,C]=hlf_add(A,B)
    A1=NOT_gate_fn(A);
    B1=NOT_gate_fn(B);
    S=OR_gate_fn(AND_gate_fn(A,B1),AND_gate_fn(A1,B));
    C=AND_gate_fn(A,B);
end