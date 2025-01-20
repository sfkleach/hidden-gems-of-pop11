
define deep_explode(L);
    if L.islist then
        applist(L, deep_explode)
    else
        L
    endif
enddefine;

define flatten(L);
    [% deep_explode( L ) %]
enddefine;
