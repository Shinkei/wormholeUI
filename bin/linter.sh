#!/usr/bin/env sh

source .venv/bin/activate
flake8 *.py src --count --select=E901,E999,F821,F822,F823 --statistics
