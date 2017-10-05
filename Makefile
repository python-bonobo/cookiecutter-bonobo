.PHONY: install test

install:
	pip install -r requirements.txt

test:
	cookiecutter --no-input .
	@ls -Rlsah etl-project
	bonobo run etl-project
	@rm -rf etl-project

