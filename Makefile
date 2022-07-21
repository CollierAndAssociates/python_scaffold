install:
	pip3 install --upgrade pip &&\
		pip3 install -r requirements.txt

format:
	black *.py

lint:
	pylint --disable=R,C hello.py
	
test:
	python3 -m pytest -vv --cov=hello.py test_hello.py
	
all:  install lint test
	