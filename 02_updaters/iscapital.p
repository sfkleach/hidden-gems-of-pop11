
define iscapital(n, text);
    isuppercode(subscrs(n, `text))
enddefine;

define updaterof iscapital(result, n, text);
    lowertoupper(subscrs(n, text)) -> subscrs(n, text)
enddefine;
