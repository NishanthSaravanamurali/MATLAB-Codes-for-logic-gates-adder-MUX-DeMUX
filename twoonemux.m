function f=twoonemux(S0,D1,D0)
    f=OR_gate_fn(AND_gate_fn(NOT_gate_fn(S0),D0),AND_gate_fn(S0,D1));
    