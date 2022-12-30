%truth table 
%adder
clear all;clc;
disp("Truth Table")
x=("Enter number for the required truth table (HALF ADDER-1 , FULL ADDER-2) :");
X=input(x);

t1=[0;1];
[r1,c1]=size(t1);

halfadder=["A" "B" "Sum" "carry"];
fulladder=["A" "B" "C" "Sum" "carry"];

if X==1
    for i=1:r1
        for j=1:r1
            [s,c]=hlf_add(t1(i,1),t1(j,1));
            halfadder=[halfadder;t1(i,1) t1(j,1) s c];
        end
    end
    disp(halfadder)
elseif X==2
    for i=1:r1
        for j=1:r1
            for k=1:r1
                [s,c]=ful_add(t1(i,1),t1(j,1),t1(k,1));
                fulladder=[fulladder;t1(i,1) t1(j,1) t1(k,1) s c];
            end
        end
    end
    disp(fulladder)

else
    disp("Enter valid input");
end
