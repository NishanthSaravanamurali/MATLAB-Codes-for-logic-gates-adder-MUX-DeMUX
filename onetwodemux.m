function [D0,D1]=onetwodemux(in,sel)
    D0=AND_gate_fn(NOT_gate_fn(sel),in);
    D1=AND_gate_fn(sel,in);
end