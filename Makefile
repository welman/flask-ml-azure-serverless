setup:
	#python3.6 -m venv ~/.flask-ml-azure
	#source ~/.flask-ml-azure/bin/activate
	#create a new virtual env to solve problem
	python3.6 -m venv ~/.flask-ml-azure2
	source ~/.flask-ml-azure2/bin/activate
	
install:
	pip3 install --upgrade pip &&\
		pip3 install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb


lint:
	#hadolint Dockerfile #uncomment to explore linting Dockerfiles
	pylint --disable=R,C,W1203,W0702 app.py

all: install lint test
