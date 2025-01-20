
define range_extract( dlist );
    [% until dlist.null do
        lvars lo = hd(dlist);
        while not(null(tl(dlist))) and dlist(1) + 1 == dlist(2) do
            tl(dlist) -> dlist
        endwhile;
        lvars hi = dest(dlist) -> dlist;
        [% lo, hi %]
    enduntil %]
enddefine;
