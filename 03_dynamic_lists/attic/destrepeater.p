
define destrepeater(procedure r);
    #| repeat
        lvars x = r();
        quitif( x == termin );
        x
    endrepeat |#
enddefine;
