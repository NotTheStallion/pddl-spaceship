
(define (problem spaceship-quest)
   (:domain spaceship-adventure)

   (:objects
      spaceship1 - spaceship
      planet1 planet2 planet3 planet4 planet5 planet6 planet7 planet8 planet9 planet10 - planet
      part1 part2 part3 - item
   )

   (:init
      ; Initial connections between planets
      (connected planet1 planet2) (connected planet2 planet1)
      (connected planet2 planet3) (connected planet3 planet2)
      (connected planet3 planet4) (connected planet4 planet3)
      (connected planet4 planet5) (connected planet5 planet4)
      (connected planet5 planet6) (connected planet6 planet5)
      (connected planet6 planet7) (connected planet7 planet6)
      (connected planet7 planet8) (connected planet8 planet7)
      (connected planet8 planet9) (connected planet9 planet8)
      (connected planet9 planet10) (connected planet10 planet9)

      ; Initial spaceship and item locations
      (at spaceship1 planet1)
      (at part1 planet3)
      (at part2 planet6)
      (at part3 planet9)

      ; Planet 10 is the corporation
      (is-corporation planet10)
   )

   (:goal
      (and (has-jet-booster spaceship1))
   )
)
