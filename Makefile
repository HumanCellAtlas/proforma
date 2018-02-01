.PHONY: test lint tests
MODULES=proforma tests

test: lint tests

lint:
	flake8 $(MODULES) *.py

tests:
	PYTHONWARNINGS=ignore:ResourceWarning coverage run --source=proforma \
		-m unittest discover --start-directory tests --top-level-directory . --verbose

include common.mk
