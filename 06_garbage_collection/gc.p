

define run_gc(gc_trace, p);
    dlocal popgctrace = gc_trace;
    dlvars count = 0;
    dlvars start_time = sys_real_time();

    define dlocal pop_after_gc();
        count + 1 -> count;
    enddefine;

    define dlocal interrupt();
        lvars nsecs = sys_real_time() - start_time + 0.0;
        [count ^count nsecs ^nsecs] =>
        [gc per sec: ^(count / nsecs)] =>
        setpop();
    enddefine;

    repeat
        p()
    endrepeat
enddefine;

define gc_store( gctrace );
    run_gc( gctrace, inits(% 1000000 %) <> erase )
enddefine;

define gc_devices( gctrace );
    run_gc( gctrace, discin(% '/etc/hosts' %) <> erase )
enddefine;
