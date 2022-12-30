%%
%Common UI
clear all;clc;

disp("MUX")
x=("Enter number for the required demux (1-2 to 1 MUX,2-4 to 1 MUX,3-8 to 1 MUX) :");
X=input(x);
Z=10;

if X==1
    in="Enter the value for in:";
    In=input(in);
    sel="Enter the value for sel:";
    Sel=input(sel);
    if (In>1 && Sel>1) || (In<0 && Sel<0)
        Z=("invalid input received for In and Sel,ending process!");
    elseif (In>1)||(In<0)
        Z=("invalid input received for In ,ending process!");
    elseif (Sel>1)||(Sel<0)
        Z=("invalid input received for Sel,ending process!");
    else
        disp("OUTPUT")
        [D0,D1]=(onetwodemux(In,Sel));
        Z=["Input","Select","D1","D0";In,Sel,D1,D0];
        disp(Z)
        Z=5;
    end

elseif X==2
    in="Enter the value for in:";
    In=input(in);
    s0="Enter the value for S0:";
    S0=input(s0);
    s1="Enter the value for S1:";
    S1=input(s1);
    if (In>1)||(In<0)
        Z=("invalid input received for In,ending process!");
    elseif (S0>1)||(S0<0) 
        Z=("invalid input received for S0,ending process!");
    elseif (S1>1)||(S1<0)
        Z=("invalid input received for S1,ending process!");
    else
        disp("OUTPUT")
        [D0,D1,D2,D3]=onefourdemux(In,S1,S0);
        Z=["Input","S1","S0","D0","D1","D2","D3";In,S1,S0,D0,D1,D2,D3];
        disp(Z)
        Z=5;
    end

elseif X==3
    in="Enter the value for in:";
    In=input(in);
    s0="Enter the value for S0:";
    S0=input(s0);
    s1="Enter the value for S1:";
    S1=input(s1);
    s2="Enter the value for S2:";
    S2=input(s2);
    if (In>1)||(In<0)
        Z=("invalid input received for In,ending process!");
    elseif (S2>1)||(S2<0) 
        Z=("invalid input received for S2,ending process!");
    elseif (S1>1)||(S1<0)
        Z=("invalid input received for S1,ending process!");
    elseif (S0>1)||(S0<0) 
        Z=("invalid input received for S0,ending process!");
    else
        disp("OUTPUT")
        [D0,D1,D2,D3,D4,D5,D6,D7]=oneeightdemux(In,S2,S1,S0);
        Z=["In","S2","S1","S0","D0","D1","D2","D3","D4","D5","D6","D7";In,S2,S1,S0,D0,D1,D2,D3,D4,D5,D6,D7];
        disp(Z)
        Z=5;
    end
end


if  isstring( Z )
    disp("OUTPUT")
    disp(Z)
elseif Z==10
    disp("OUTPUT")
    disp("Invalid input number for logic gate choice")
end
