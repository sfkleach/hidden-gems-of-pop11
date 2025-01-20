

define dlocaldir( p, dirname );
    dlocal current_directory = current_directory dir_>< dirname;
    p()
enddefine;

define touch();
    dlocal cucharout = discappend( 'log.txt' );
    pr( 'The time is ' );
    npr( sysdaytime() );
    cucharout(termin);
enddefine;
