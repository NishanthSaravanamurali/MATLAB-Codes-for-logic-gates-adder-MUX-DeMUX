function Final=fouronemux(S1,S0,D0,D1,D2,D3)
    F1=twoonemux(D0,D1,S0);
    F2=twoonemux(D2,D3,S0);
    Final=twoonemux(F1,F2,S1);
end