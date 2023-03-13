#!/bin/bash
set -euxo pipefail

./scripts/lint.sh
poetry run pytest -s --cov=noble/ --cov=tests --cov-report=term-missing ${@-} --cov-report html
