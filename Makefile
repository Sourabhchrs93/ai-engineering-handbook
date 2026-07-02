.PHONY: install serve build clean

install:
	python -m pip install -e '.[docs]'

serve:
	mkdocs serve

build:
	mkdocs build --strict

clean:
	rm -rf site

