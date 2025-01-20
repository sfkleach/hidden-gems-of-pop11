
define summax() -> sofar;
;;;    dlocal popgctrace = 1;
    0 -> sofar;
    lvars dlist = discin('data.txt').incharitem.pdtolist;
    until dlist.null or dlist.tl.null or dlist.tl.tl.null do
        lvars (a, b, c) = (dlist.dest ->> dlist).dest.hd;
        if b > a and b > c then
            sofar + b -> sofar
        endif;
    enduntil
enddefine;
