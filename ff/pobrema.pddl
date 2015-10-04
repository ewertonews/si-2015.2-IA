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
			(at bike-1 st-rita) 
			(at bike-2 st-apolo)
			(at joao st-rita)
			(at maria st-alfandega)
			(at jose st-apolo))
	(:goal (and(at joao st-rita)(passed joao st-apolo)))
)
	
			
			