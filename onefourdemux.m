function [D0,D1,D2,D3]=onefourdemux(in,S1,S0)
    D0=AND_gate_fn(AND_gate_fn(NOT_gate_fn(S1),NOT_gate_fn(S0)),in);
    D1=AND_gate_fn(AND_gate_fn(NOT_gate_fn(S1),S0),in);
    D2=AND_gate_fn(AND_gate_fn(S1,NOT_gate_fn(S0)),in);
    D3=AND_gate_fn(AND_gate_fn(S1,S0),in);
end