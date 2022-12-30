function Final=eightonemux(S2,S1,S0,D0,D1,D2,D3,D4,D5,D6,D7)
    F1=fouronemux(D0,D1,D2,D3,S0,S1);
    F2=fouronemux(D4,D5,D6,D7,S0,S1);
    Final=twoonemux(F1,F2,S2);
end
