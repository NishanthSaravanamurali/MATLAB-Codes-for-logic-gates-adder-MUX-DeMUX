%NOT Gate function
%used in NOT,NAND,NOR,XOR nad XNOR gates

%checking for valid inputs and implementing gate logic
function NOT=NOT_gate_fn(A)
    if A>1
        NOT=("invalid input received for a,ending process!");
    elseif A<0 
        NOT=("invalid input received for a,ending process!");
    elseif A==1
        NOT=0;
    elseif A==0
        NOT=1;
    end
end
