cookiecutter-bonobo
===================

A cookiecutter template to create an ETL project that uses bonobo.

tl;dr
:::::

.. code-block:: shell-session

    $ pip install -U cookiecutter
    $ cookiecutter https://github.com/python-bonobo/cookiecutter-bonobo.git
    
Non-interractive version:

.. code-block:: shell-session

    $ cookiecutter --no-input https://github.com/python-bonobo/cookiecutter-bonobo.git name=my_etl_project


Complete example, with clean virtualenv creation
::::::::::::::::::::::::::::::::::::::::::::::::

.. code-block:: shell-session

    $ virtualenv -p python3 etl-env
    $ source etl-env/bin/activate
    $ pip install cookiecutter
    $ cookiecutter --no-input https://github.com/python-bonobo/cookiecutter-bonobo.git name=etl-project
    $ pip install -r etl-project/requirements.txt
    $ bonobo run etl-project/__main__.py
    
What's in there?
::::::::::::::::

* .env: environment file, ignored by git.
* Makefile: simple make targets to install dependencies. Not much here, but `make` will install the requirements.
* __main__.py: example graph.
* _services.py: services definitions, will be used at runtime.
* output: placeholder directory for output files.
* requirements.txt: python requirements for your project.
