help:
	@echo "Available commands"
	@echo "- start : Setup environment and runs the jupyter lab"
	@echo "- setup : Setup environment by installing dependencies and spacy models"
	@echo "- run : Starts jupyter lab"
setup:
	pip install -r requirements.txt
	spacy download en_core_web_sm
run:
	jupyter lab
start: setup run
reqs:
	pip-compile requirements.in
