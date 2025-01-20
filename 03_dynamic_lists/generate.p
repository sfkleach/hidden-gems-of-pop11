define generate();
    dlocal cucharout = discout('data.txt');
    npr(0);
    lvars i;
    for i from 1 to 1000000 do
        npr(i);
        npr(0);
    endfor;
    cucharout(termin);
enddefine;
