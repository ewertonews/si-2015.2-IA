(define(domain bikePE-a)
(:requirements :strips)
(:predicates 
	(adj ?station-1 ?station-2)
	(at ?who ?station)
	(have ?who ?what)
	;;(wait-5min ?who ?where)
	(passed ?who ?where)
	(is-unlocked ?what ?where)
	(is-bike ?what)
	(is-human ?who)
	
	)


(:action pegar-bicicleta
	
	:parameters (?who ?what ?where)
	
	:precondition 	(and(at ?who ?where)
						(at ?what ?where)
						(is-bike ?what)
						;;(is-unlocked ?what ?where)
						(is-human ?who)
						(not(have ?who ?what) )
						(not (wait-5min ?who ?where) )
						)						
	:effect								
					(have ?who ?what)   					
					)
	
(:action pedalar
    :parameters (?who ?what ?from ?to )
    :precondition  (and (adj ?from ?to)
                       (at ?who ?from)					   
					   (at ?what ?from)
					   (is-bike ?what)
					   (is-human ?who)
					   (have ?who ?what)
				    )
					   
    :effect (and (not (at ?who ?from) )
				 (not (at ?what ?from) )										
                 (at ?who ?to)
				 (at ?what ?to)
				 (not (have ?who ?what))
				 )
				 )
								
(:action entregar-bicicleta
	:parameters (?who ?what ?to)
	:precondition 	(and (at ?who ?to)
						 (at ?what ?to)
						 (is-bike ?what)
						 (is-human ?who)
						 (have ?who ?what)							
						)
						
	:effect			(and (not(have ?who ?what))
                    (not (is-unlocked ?what ?to))	
					(wait-5min ?who ?to)
					(at ?what ?to))
										
					)
					
					)
					
																				
						
			