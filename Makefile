.PHONY: install test

install:
	pip install -r requirements.txt

test:
	cookiecutter --no-input .
	tree etl-project
	rm -rf etl-project

