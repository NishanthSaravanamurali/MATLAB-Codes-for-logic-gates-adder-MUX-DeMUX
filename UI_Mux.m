%%
%Common UI
clear all;clc;

disp("MUX")
x=("Enter number for the required mux (1-2 to 1 MUX,2-4 to 1 MUX,3-8 to 1 MUX) :");
X=input(x);
Z=10;

if X==1
    d0="Enter the value for D0:";
    D0=input(d0);
    d1="Enter the value for D1:";
    D1=input(d1);
    s0="Enter the value for S0:";
    S0=input(s0);
    if (D0>1 && D1>1 && S0>1) || (D0<0 && D1<0 && S0<0)
        Z=("invalid input received for D0,D1 and S0,ending process!");
    elseif (D0>1 && D1>1) || (D0<0 && D1<0)
        Z=("invalid input received for D0 and D1,ending process!");
    elseif (D0>1 && S0>1) || (D0<0 && S0<0)
        Z=("invalid input received for D0 and S0,ending process!");
    elseif (S0>1 && D1>1) || (D1<0 && S0<0)
        Z=("invalid input received for D1 and S0,ending process!");
    elseif (D0>1)||(D0<0)
        Z=("invalid input received for D0 ,ending process!");
     elseif (D1>1)||(D1<0)
        Z=("invalid input received for D1,ending process!");
    elseif (S0>1)||(S0<0) 
        Z=("invalid input received for S0,ending process!");
    else
        F=twoonemux(D1,D0,S0);
        disp("OUTPUT")
        Z=["S0","D1","D0","F";S0,D1,D0,F];
        disp(Z)
        Z=5;
    end
elseif X==2
    d0="Enter the value for D0:";
    D0=input(d0);
    d1="Enter the value for D1:";
    D1=input(d1);
    d2="Enter the value for D2:";
    D2=input(d2);
    d3="Enter the value for D3:";
    D3=input(d3);
    s0="Enter the value for S0:";
    S0=input(s0);
    s1="Enter the value for S1:";
    S1=input(s1);
    if (D0>1)||(D0<0)
        Z=("invalid input received for D0 ,ending process!");
    elseif (D1>1)||(D1<0)
        Z=("invalid input received for D1,ending process!");
    elseif (D2>1)||(D2<0) 
        Z=("invalid input received for D2,ending process!");
    elseif (D3>1)||(D3<0)
        Z=("invalid input received for D3 ,ending process!");
    elseif (S1>1)||(S1<0)
        Z=("invalid input received for S1,ending process!");
    elseif (S0>1)||(S0<0) 
        Z=("invalid input received for S0,ending process!");
    else
        F=fouronemux(S1,S0,D0,D1,D2,D3);
        disp("OUTPUT")
        Z=["S1","S0","D0","D1","D2","D3","F";S1,S0,D0,D1,D2,D3,F];
        disp(Z)
        Z=5;
    end
elseif X==3
    d0="Enter the value for D0:";
    D0=input(d0);
    d1="Enter the value for D1:";
    D1=input(d1);
    d2="Enter the value for D2:";
    D2=input(d2);
    d3="Enter the value for D3:";
    D3=input(d3);
    d4="Enter the value for D4:";
    D4=input(d4);
    d5="Enter the value for D5:";
    D5=input(d5);
    d6="Enter the value for D6:";
    D6=input(d6);
    d7="Enter the value for D7:";
    D7=input(d7);
    s0="Enter the value for S0:";
    S0=input(s0);
    s1="Enter the value for S1:";
    S1=input(s1);
    s2="Enter the value for S2:";
    S2=input(s2);
    if (D0>1)||(D0<0)
        Z=("invalid input received for D0 ,ending process!");
    elseif (D1>1)||(D1<0)
        Z=("invalid input received for D1,ending process!");
    elseif (D2>1)||(D2<0) 
        Z=("invalid input received for D2,ending process!");
    elseif (D3>1)||(D3<0)
        Z=("invalid input received for D3 ,ending process!");
    elseif (D4>1)||(D4<0)
        Z=("invalid input received for D4,ending process!");
    elseif (D5>1)||(D5<0) 
        Z=("invalid input received for D5,ending process!");
    elseif (D6>1)||(D6<0)
        Z=("invalid input received for D6 ,ending process!");
    elseif (D7>1)||(D7<0)
        Z=("invalid input received for D7,ending process!");
    elseif (S2>1)||(S2<0) 
        Z=("invalid input received for S2,ending process!");
    elseif (S1>1)||(S1<0)
        Z=("invalid input received for S1,ending process!");
    elseif (S0>1)||(S0<0) 
        Z=("invalid input received for S0,ending process!");
    else
        F=eightonemux(S2,S1,S0,D0,D1,D2,D3,D4,D5,D6,D7);
        disp("OUTPUT")
        Z=["S2","S1","S0","D0","D1","D2","D3","D4","D5","D6","D7","F";S2,S1,S0,D0,D1,D2,D3,D4,D5,D6,D7,F];
        disp(Z)
        Z=5;
    end
end


disp("OUTPUT")
if  isstring( Z )
    disp(Z)
elseif Z==10 
    disp("Invalid input number for logic gate choice")
end
