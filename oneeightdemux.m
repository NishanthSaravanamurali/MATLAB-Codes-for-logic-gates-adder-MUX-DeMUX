function [D0,D1,D2,D3,D4,D5,D6,D7]=oneeightdemux(in,S2,S1,S0)
    D0=AND_gate_fn(AND_gate_fn(AND_gate_fn(NOT_gate_fn(S0),NOT_gate_fn(S1)),NOT_gate_fn(S2)),in);
    D1=AND_gate_fn(AND_gate_fn(AND_gate_fn(S0,NOT_gate_fn(S1)),NOT_gate_fn(S2)),in);
    D2=AND_gate_fn(AND_gate_fn(AND_gate_fn(NOT_gate_fn(S0),S1),NOT_gate_fn(S2)),in);
    D3=AND_gate_fn(AND_gate_fn(AND_gate_fn(S0,S1),NOT_gate_fn(S2)),in);
    D4=AND_gate_fn(AND_gate_fn(AND_gate_fn(NOT_gate_fn(S0),NOT_gate_fn(S1)),S2),in);
    D5=AND_gate_fn(AND_gate_fn(AND_gate_fn(S0,NOT_gate_fn(S1)),S2),in);
    D6=AND_gate_fn(AND_gate_fn(AND_gate_fn(NOT_gate_fn(S0),S1),S2),in);
    D7=AND_gate_fn(AND_gate_fn(AND_gate_fn(S0,S1),S2),in);
end