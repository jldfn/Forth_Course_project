: even 2 % not ;

: prime
dup 2 < not 
    if
        1 >r
        repeat 
            dup r> 1 + dup >r % not 
        until 
        r>
        =
    else 
        drop 0 
    then
;

: prime_allot prime 8 allot dup -rot ! ; 
	
: concat 
	dup count
	rot dup count
	rot over + 1 +
	heap-alloc 
	rot swap dup rot 
	string-copy 
	dup rot + rot 
	string-copy 
;

: collats
    repeat
        dup 1 = not
        if
            dup 2 %
            if
                3 * 1 + dup . 32 emit 0
            else
                2 / dup . 32 emit 0
            then
        then
    until
;
