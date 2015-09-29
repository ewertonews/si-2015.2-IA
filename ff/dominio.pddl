(define(domain bikePE-a)

(:predicates 
	(adj ?station-1 ?station-2)
	(at ?who ?station)
	(have ?who ?what)
	(wait-5min ?who ?where)
	(passed ?who ?where)
	)
	
(:action pedalar
    :parameters (?who ?what ?from ?to)
    :precondition (and (adj ?from ?to)
                       (at ?who ?from)
					   (at ?what ?from))
    :effect (and (not (at ?who ?from))
                 (at ?who ?to)
				 (at ?what ?to)))

(:action pegar-bicicleta
	:parameters (?who ?what ?where)
	:precondition 	(and(at ?who ?where)
						(at ?what ?where))
	:effect			(and(have ?who ?what)
					(not (at ?what ?where))))

								
(:action entregar-bicicleta
	:parameters (?who ?what ?where)
	:precondition 	(and(at ?who ?where)
						(at ?what ?where))
	:effect			(and(not(have ?who ?what))
					(at ?what ?where)	
					(wait-5min ?who ?where))))
			
					
						
   