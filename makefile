#!make
include .env

# Python setup with pipenv
ifeq ($(PY_VERSION),)
PY_VERSION := 3.11
endif

setup:
	mkdir ./.venv &&  \
	pipenv --python ${PY_VERSION} && \
	source .venv/bin/activate && \
	pip install --upgrade pip
install-dev:
	pipenv install --dev
packages-lock:
	pipenv lock
install-prod:
	pipenv install --ignore-pipfile --deploy