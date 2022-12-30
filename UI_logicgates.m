%%
%Common UI
clear all;clc;
disp("LOGIC GATES")
x=("Enter number for the required gate (NOT-1,AND-2,OR-3,NOR-4,NAND-5,XOR-6,XAND-7) :");
X=input(x);
Z=10;

if X==1
    a="Enter the value for a:";
    A=input(a);

elseif X>1 && X<8
    a="Enter the value for a:";
    A=input(a);
    b="Enter the value for b:";
    B=input(b);
end

if X==1
    Z=NOT_gate_fn(A);
elseif X==2
    Z=AND_gate_fn(A,B);
elseif X==3
    Z=OR_gate_fn(A,B);
elseif X>3 && X<8
    Z=AND_gate_fn(A,B);
    if isstring(Z)
        
    else
        if X==4
            NOR1=OR_gate_fn(A,B);
            Z=NOT_gate_fn(NOR1);
        elseif X==5
            NAND1=AND_gate_fn(A,B);
            Z=NOT_gate_fn(NAND1);
        elseif X==6
            A2=NOT_gate_fn(A);
            B2=NOT_gate_fn(B);
            XOR1=AND_gate_fn(A,B2);
            XOR2=AND_gate_fn(A2,B);
            Z=OR_gate_fn(XOR1,XOR2);
        elseif X==7
            A2=NOT_gate_fn(A);
            B2=NOT_gate_fn(B);
            XNOR1=AND_gate_fn(A,B2);
            XNOR2=AND_gate_fn(A2,B);
            XNOR3=OR_gate_fn(XNOR1,XNOR2);
            Z=NOT_gate_fn(XNOR3);
        end
    end
end


disp("OUTPUT")
if  isstring( Z )
    disp(Z)
elseif Z==1 || Z==0 
    disp(Z)
else
    disp("Invalid input number for logic gate choice")
end

