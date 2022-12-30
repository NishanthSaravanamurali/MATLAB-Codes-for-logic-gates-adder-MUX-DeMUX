function [Sout,Cout]=ful_add(A,B,C)
    [S1,C1]=hlf_add(A,B);
    [Sout,C2]=hlf_add(S1,C);
    Cout=OR_gate_fn(C1,C2);
end
