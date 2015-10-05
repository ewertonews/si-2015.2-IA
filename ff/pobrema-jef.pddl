(define (problem bikePE-a-1)
  (:domain bikePE-a)
   (:objects
   st-rita
   st-alfandega
   st-apolo
   bike-1
   bike-2
   joao
   maria
   jose)
   
   (:init 	(adj st-rita  st-alfandega) (adj st-alfandega st-rita)
			(adj st-alfandega st-apolo) (adj st-apolo st-alfandega)
			
			(is-bike bike-1)
			(at bike-1 st-rita)
			(is-unlocked bike-1 st-rita)
			
			(is-bike bike-2)
			(at bike-2 st-apolo)
			(is-unlocked bike-2 st-apolo)
			
			(is-human joao)
			(at joao st-rita)
				
			(is-human maria)	
			(at maria st-alfandega)
			
			(is-human jose)
			(at jose st-apolo))
	
	(:goal (and (at joao st-apolo) (at jose st-rita) ) )
)