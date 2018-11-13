(define (domain keys-strips)
   (:predicates 
        (door1-open)
        (door2-open)
        (have-key1)
        (have-key2)
        )

    (:action get-key1
        :parameters ()
        :precondition ()
        :effect (and (have-key1))
        )

    (:action get-key2
        :parameters ()
        :precondition ()
        :effect (and (have-key2))
        )

    (:action open-door1
        :parameters ()
        :precondition (and (have-key1))
        :effect (and (door1-open))
    )

    (:action open-door2
        :parameters ()
        :precondition (and (have-key2))
        :effect (and (door2-open))
    )
)

