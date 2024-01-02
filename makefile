install: 
		pip install --upgrade pip &&\
			pip install -r requirements.txt 

test:
	python -m pytest -vv test_func.py

format:
	black *.py

lint:
	pylint --disable=R,C func.py

all: install lint format test
