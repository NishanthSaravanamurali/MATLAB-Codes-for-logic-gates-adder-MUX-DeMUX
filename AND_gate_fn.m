%AND gate function
%used in AND,NAND,XOR and XNOR gates

%checking for valid inputs and implementing gate logic
function AND=AND_gate_fn(A,B)
    if A>1
        if B>1
            AND=("invalid input received for both a and b,ending process!");
        elseif B<0
            AND=("invalid input received for both a and b,ending process!");
        else
            AND=("invalid input received for a,ending process!");
        end
    elseif A<0
        if B>1
            AND=("invalid input received for both a and b,ending process!");
        elseif B<0
            AND=("invalid input received for both a and b,ending process!");
        else
            AND=("invalid input received for a,ending process!");
        end
    elseif B>1
            AND=("invalid input received for b,ending process!");
    elseif B<0 
            AND=("invalid input received for b,ending process!");
    elseif A==1
        if B==1
            AND=1;
        elseif B==0
            AND=0;
        end
    elseif A==0
        if B==1
            AND=0;
        elseif B==0
            AND=0;
        end
    end
end
