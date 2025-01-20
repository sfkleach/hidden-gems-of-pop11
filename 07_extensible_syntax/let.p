/*

    let x = EXPR
    in
        STATEMENTS
    endlet

*/


vars syntax endlet;

define syntax let;
    sysLBLOCK( popexecute );

    lvars varname = readitem();
    sysLVARS(varname, 0);
    pop11_need_nextitem( "=" ) -> _;
    pop11_comp_expr();
    sysPOP(varname);

    pop11_need_nextitem( "in" ) -> _;

    pop11_comp_stmnt_seq_to( "endlet" ) -> _;

    sysENDLBLOCK();
enddefine;


vars syntax endlet;

define syntax let;
    sysLBLOCK(popexecute);
    repeat
        lvars varname = readitem();
        sysLVARS(varname, 0);
        pop11_need_nextitem("=") -> _;
        pop11_comp_expr();
        sysPOP(varname);
        quitif(pop11_try_nextitem("in"));
        pop11_need_nextitem(";") -> _;
    endrepeat;
    pop11_comp_stmnt_seq_to("endlet") -> _;
    sysENDLBLOCK();
enddefine;
