%OR Gate function
%used in OR,NOR,XOR and XNOR gates

%checking for valid inputs and implementing gate logic
function OR=OR_gate_fn(A,B)
    if A>1
        if B>1
            OR=("invalid input received for both a and b,ending process!");
        elseif B<0
            OR=("invalid input received for both a and b,ending process!");
        else
            OR=("invalid input received for a,ending process!");
        end
    elseif A<0
        if B>1
            OR=("invalid input received for both a and b,ending process!");
        elseif B<0
            OR=("invalid input received for both a and b,ending process!");
        else
            OR=("invalid input received for a,ending process!");
        end
    elseif B>1
            OR=("invalid input received for b,ending process!");
    elseif B<0 
            OR=("invalid input received for b,ending process!");
    elseif A==1
        if B==1
            OR=1;
        elseif B==0
            OR=1;
        end
    elseif A==0
        if B==1
            OR=1;
        elseif B==0
            OR=0;
        end
    end
end


