DEFAULT_GOAL := help

.PHONY: help
help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  install-uv      Install uv"
	@echo "  install         Install dependencies"
	@echo "  docs            Build documentation"

.PHONY: install-poetry
install-uv:
	pip install uv

.PHONY: install
install:
	uv sync --frozen --no-install-project --no-dev

.PHONY: docs
docs:
	uv run --no-project mkdocs build

.PHONY: serve
serve:
	uv run --no-project mkdocs serve
