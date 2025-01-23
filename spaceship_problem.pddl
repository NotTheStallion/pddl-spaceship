(define (problem spaceship-quest)
   (:domain spaceship-adventure)

   (:objects
      spaceship1 - spaceship
      planet1 planet2 planet3 planet4 planet5 planet6 planet7 planet8 planet9 planet10 - planet
      part1 part2 part3 - item
      resource1 resource2 resource3 - resource
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
      (connected planet1 planet5) (connected planet5 planet1)
      (connected planet2 planet6) (connected planet6 planet2)
      (connected planet3 planet7) (connected planet7 planet3)
      (connected planet4 planet8) (connected planet8 planet4)
      (connected planet5 planet9) (connected planet9 planet5)
      (connected planet6 planet10) (connected planet10 planet6)

      ; Initial spaceship and item locations
      (at spaceship1 planet1)
      (at part1 planet3)
      (at part2 planet6)
      (at part3 planet9)

      ; Initial fuel stations and resources
      (has-fuel-station planet2)
      (has-fuel-station planet7)
      (resource-available resource1 planet4)
      (resource-available resource2 planet5)
      (resource-available resource3 planet8)
      (resource-available resource4 planet9)
      (resource-available resource5 planet10)

      ; Planet 10 is the corporation
      (is-corporation planet10)
      (is_full_fuel spaceship1)
   )

   (:goal
      (and 
         (has-jet-booster spaceship1)
         (at spaceship1 planet10)
      )
   )
)
