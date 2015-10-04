(define(domain bikePE-a)

(:predicates 
	(adj ?station-1 ?station-2)
	(at ?who ?station)
	(agent-has-bike ?who ?what)
	(wait-5min ?what ?where)
	(is-unlocked ?what ?where)
	(st-has-bike ?what ?where)
	(passed ?who ?where)
	(is-agent ?who))


	
(:action pegar-bike
	:parameters (?who ?what ?from)
	:precondition 	(and(at ?who ?from)
						(st-has-bike ?what ?from))
						;;(is-unlocked ?what ?where))
	
	:effect			(and(agent-has-bike ?who ?what)
					(not (at ?what ?from))))	
	
	
	
;;EQUIVALENT TO MOVE-AGENT	
(:action pedalar
    :parameters (?who ?what ?from ?to)
    :precondition (and (is-agent ?who)   ;;quem deve se mover eh o agente, nao a estacao
					   (adj ?from ?to)   ;;ele so pedala pra uma estacao adjacente
                       (at ?who ?from)   ;; o agente deve estar naquela estacao
					   (agent-has-bike ?who ?what)) ;; pra pedalar, o  agente deve ter uma bike
    
	:effect (and (not (at ?who ?from))
                 (not (at ?what ?from))
				 (at ?who ?to)))


								
(:action entregar-bike
	:parameters (?who ?what ?to)
	:precondition 	(and(at ?who ?to)
						(agent-has-bike ?what ?to))
	
	:effect			(and(not(agent-has-bike ?who ?what))
					    (at ?what ?to)))	
					    ;;(bike-locked ?what ?to))
	
	

					
)
			
					
						
   