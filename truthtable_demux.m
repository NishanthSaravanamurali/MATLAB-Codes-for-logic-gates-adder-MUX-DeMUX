%truth table 
%mux
clear all;clc;
disp("Truth Table")
x=("Enter number for the required truth table (1 to 2 DEMUX-1 , 1 to 4 DEMUX-2 , 1 to 8 DEMUX-3) :");
X=input(x);

t1=[0;1];
[r1,c1]=size(t1);

ontwdemux=["IN" "SEL" "A" "B"];
onfodemux=["IN" "S1" "S0" "D0" "D1" "D2" "D3"];
oneidemux=["IN" "S2" "S1" "S0" "D0" "D1" "D2" "D3" "D4" "D5" "D6" "D7"];

if X==1
    for i=1:r1
        for j=1:r1
            [a,b]=onetwodemux(t1(i,1),t1(j,1));
            ontwdemux=[ontwdemux;t1(i,1) t1(j,1) a b];
        end
    end
    disp(ontwdemux)

elseif X==2
    for i=1:r1
        for j=1:r1
            for k=1:r1
                [a,b,c,d]=onefourdemux(t1(i,1),t1(j,1),t1(k,1));
                onfodemux=[onfodemux;t1(i,1) t1(j,1) t1(k,1) a b c d];
            end
        end
    end
    disp(onfodemux)

elseif X==3
    for i=1:r1
        for j=1:r1
            for k=1:r1
                for l=1:r1
                    [a,b,c,d,e,f,g,h]=oneeightdemux(t1(i,1),t1(j,1),t1(k,1),t1(l,1));
                    oneidemux=[oneidemux;t1(i,1) t1(j,1) t1(k,1) t1(l,1) a b c d e f g h];
                end
            end
        end
    end
    disp(oneidemux)

else
    disp("Enter valid input");
end
