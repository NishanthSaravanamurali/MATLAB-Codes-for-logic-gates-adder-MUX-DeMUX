%truth table 
%basic gates
clear all;clc;
disp("Truth Table")
x=("Enter number for the required truth table (NOT-1,OR-2,AND-3,NOR-4,NAND-5,XOR-6,XAND-7) :");
X=input(x);

t1=[0;1];
t2=[0,0;0,1;1,0;1,1];
[r1,c1]=size(t1);
[r2,c2]=size(t2);

not=["in" "out"];
or=["A" "B" "out"];
and=["A" "B" "out"];
nor=["A" "B" "out"];
nand=["A" "B" "out"];
xor=["A" "B" "out"];
xnor=["A" "B" "out"];

if X==1
    for i=1:r1
        not=[not;t1(i,1) NOT_gate_fn(t1(i,1))];
    end
    disp(not)
elseif X==2
    for i=1:r2
        or=[or;t2(i,1) t2(i,2) OR_gate_fn(t2(i,1),t2(i,2))];
    end
    disp(or)
elseif X==3
    for i=1:r2
        and=[and;t2(i,1) t2(i,2) AND_gate_fn(t2(i,1),t2(i,2))];
    end
    disp(and)
elseif X==4
    for i=1:r2
        nor=[nor;t2(i,1) t2(i,2) NOT_gate_fn(OR_gate_fn(t2(i,1),t2(i,2)))];
    end
    disp(nor)
elseif X==5
    for i=1:r2
        nand=[nand;t2(i,1) t2(i,2) NOT_gate_fn(AND_gate_fn(t2(i,1),t2(i,2)))];
    end
    disp(nand)
elseif X==6
    for i=1:r2
        xor=[xor;t2(i,1) t2(i,2) OR_gate_fn(AND_gate_fn(t2(i,1),NOT_gate_fn(t2(i,2))) , AND_gate_fn(NOT_gate_fn(t2(i,1)),t2(i,2)))];
    end
    disp(xor)
elseif X==7
    for i=1:r2
        xnor=[xnor;t2(i,1) t2(i,2) NOT_gate_fn(OR_gate_fn(AND_gate_fn(t2(i,1),NOT_gate_fn(t2(i,2))) , AND_gate_fn(NOT_gate_fn(t2(i,1)),t2(i,2))))];
    end
    disp(xnor)
else
    disp("Enter valid input");
end
