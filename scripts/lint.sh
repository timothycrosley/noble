#!/bin/bash
set -euxo pipefail

poetry run cruft check
poetry run mypy --ignore-missing-imports noble/
poetry run isort --check --diff noble/ tests/
poetry run black --check noble/ tests/
poetry run flake8 noble/ tests/
poetry run safety check -i 39462 -i 40291
poetry run bandit -r noble/
