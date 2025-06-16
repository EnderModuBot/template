@echo off

IF NOT EXIST .venv (
    python -m venv .venv
)

CALL .venv\Scripts\activate.bat

pip install --upgrade pip
pip install pre-commit

pre-commit install

ECHO Setup complete. pre-commit is active.
