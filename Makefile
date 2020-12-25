TAG=0.1.1
VTAG=v${TAG}

install-dev:
	python -m pip install virtualenv
	python -m virtualenv venv
	source venv/bin/activate && python -m pip install -r requirements.txt
	source venv/bin/activate && pre-commit install

clean:
	rm -rf build site
