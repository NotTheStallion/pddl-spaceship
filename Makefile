king:
	python3 -B pddl-parser/pddl-parser/PDDL.py domain.pddl problem.pddl
	python -B pddl-parser/pddl-parser/planner.py domain.pddl problem.pddl

space:
	python3 -B pddl-parser/pddl-parser/PDDL.py spaceship_domain.pddl spaceship_problem.pddl
	python -B pddl-parser/pddl-parser/planner.py spaceship_domain.pddl spaceship_problem.pddl