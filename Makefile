tile:
	python3 -B pddl-parser/pddl-parser/PDDL.py domain.pddl problem.pddl
	python -B pddl-parser/pddl-parser/planner.py domain.pddl problem.pddl