
define deep_apply( L, procedure p );
    if L.islist then
        lvars x;
        for x in L do
            deep_apply( x, p )
        endfor
    else
        p( L )
    endif
enddefine;

vars p = consproc(
    0,
    deep_apply(%
        [1 2 3 4 [ 5 6 7 ] 8 9],
        procedure(x);
            npr( x );
            suspend(0);
        endprocedure,
    %),
    true
);
