
(define (domain spaceship-adventure)
   (:requirements :strips :typing)
   (:types spaceship planet item)

   (:action travel
      :parameters (?s - spaceship ?p1 - planet ?p2 - planet)
      :precondition (and (at ?s ?p1) (connected ?p1 ?p2))
      :effect (and (at ?s ?p2) (not (at ?s ?p1)))
   )

   (:action pick-up
      :parameters (?s - spaceship ?i - item ?p - planet)
      :precondition (and (at ?s ?p) (at ?i ?p) (not (carrying ?s)) (not (is_full)))
      :effect (and (carrying ?s ?i) (not (at ?i ?p)) (is_full))
   )

   (:action drop-off
      :parameters (?s - spaceship ?i - item ?p - planet)
      :precondition (and (at ?s ?p) (carrying ?s ?i) (is_full))
      :effect (and (at ?i ?p) (not (carrying ?s ?i)) (not (is_full)))
   )

   (:action craft-jet-booster
      :parameters (?s - spaceship ?p - planet)
      :precondition (and (at ?s ?p) (at part1 ?p) (at part2 ?p) (at part3 ?p) (is-corporation ?p))
      :effect (has-jet-booster ?s)
   )
)
