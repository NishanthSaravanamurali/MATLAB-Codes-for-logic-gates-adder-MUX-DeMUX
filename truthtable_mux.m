%truth table 
%mux
clear all;clc;
disp("Truth Table")
x=("Enter number for the required truth table (2 to 1 MUX-1 , 4 to 1 MUX-2 , 8 to 1 MUX-3) :");
X=input(x);

t1=[0;1];
[r1,c1]=size(t1);

twnemux=["S0" "D1" "D0" "F"];
fonemux=["S1" "S0" "D0" "D1" "D2" "D3" "F"];
einemux=["S2" "S1" "S0" "D0" "D1" "D2" "D3" "D4" "D5" "D6" "D7" "F"];
    
if X==1
    for i=1:r1
        for j=1:r1
            for k=1:r1
                twnemux=[twnemux;t1(i,1) t1(j,1) t1(k,1) twoonemux(t1(i,1),t1(j,1),t1(k,1))];
            end
        end
    end
    disp(twnemux)

elseif X==2
    for i=1:r1
        for j=1:r1
            for k=1:r1
                for l=1:r1
                    for m=1:r1
                        for n=1:r1
                            fonemux=[fonemux;t1(i,1) t1(j,1) t1(k,1) t1(l,1) t1(m,1) t1(n,1) fouronemux(t1(i,1),t1(j,1),t1(k,1),t1(l,1),t1(m,1),t1(n,1))];
                        end
                    end
                end
            end
        end
    end
    disp(fonemux)

elseif X==3
    for i=1:r1
        for j=1:r1
            for k=1:r1
                for l=1:r1
                    for m=1:r1
                        for n=1:r1
                            for o=1:r1
                                for p=1:r1
                                    for q=1:r1
                                        for r=1:r1
                                            for s=1:r1
                                                einemux=[einemux;t1(i,1) t1(j,1) t1(k,1) t1(l,1) t1(m,1) t1(n,1) t1(o,1) t1(p,1) t1(q,1) t1(r,1) t1(r,1) eightonemux(t1(i,1),t1(j,1),t1(k,1),t1(l,1),t1(m,1),t1(n,1),t1(o,1),t1(p,1),t1(q,1),t1(r,1),t1(s,1))];
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    disp(einemux)

else
    disp("Enter valid input");
end
