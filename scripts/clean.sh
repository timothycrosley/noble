#!/bin/bash
set -euxo pipefail

poetry run isort noble/ tests/
poetry run black noble/ tests/
