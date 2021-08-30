processa a = [ x | x <- [ 1..a ], mod a x == 0 ]

prime a = if ( a < 99 ) then 
    if ( processa a == [ 1, a ] ) then 
        print( "True" ) 
        else print( "False" ) 
        else print( "Atribua um valor entre 0 e 100" )