#!/bin/bash

set -e

if [ ! -d ".venv" ]; then
  python3 -m venv .venv
fi

source .venv/bin/activate

pip install --upgrade pip
pip install pre-commit

pre-commit install

echo "Setup complete. pre-commit is active."
