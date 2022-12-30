%%
%Common UI
clear all;clc;

disp("ADDERS")
x=("Enter number for the required adder (1-Half adder,2-Full Adder) :");
X=input(x);
Z=10;

if X==1
    a="Enter the value for a:";
    A=input(a);
    b="Enter the value for b:";
    B=input(b);
    if (A>1 && B>1) || (A<0 && B<0)
        Z=("invalid input received for both a and b,ending process!");
    elseif (A>1)||(A<0)
        Z=("invalid input received for a,ending process!");
    elseif (B>1)||(B<0) 
        Z=("invalid input received for b,ending process!");
    else
        [S,C]=hlf_add(A,B);
        disp("OUTPUT")
        Z=["A","B","Sum","Carry";A,B,S,C];
        disp(Z)
        Z=5;
    end
elseif X==2
    a="Enter the value for a:";
    A=input(a);
    b="Enter the value for b:";
    B=input(b);
    c="Enter the value for c:";
    C=input(c);
    if (A>1 && B>1 && C>1) || (A<0 && B<0 && C<0)
        Z=("invalid input received for a,b and c,ending process!");
    elseif (A>1 && B>1) || (A<0 && B<0)
        Z=("invalid input received for a and b,ending process!");
    elseif (A>1 && C>1) || (A<0 && C<0)
        Z=("invalid input received for a and c,ending process!");
    elseif (C>1 && B>1) || (C<0 && B<0)
        Z=("invalid input received for b and c,ending process!");
    elseif (A>1)||(A<0)
        Z=("invalid input received for a ,ending process!");
     elseif (B>1)||(B<0)
        Z=("invalid input received for b,ending process!");
    elseif (C>1)||(C<0) 
        Z=("invalid input received for c,ending process!");
    else
        [S,C1]=ful_add(A,B,C);
        disp("OUTPUT")
        Z=["A","B","C","Sum","Carry";A,B,C,S,C1];
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
