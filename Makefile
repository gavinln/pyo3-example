SCRIPT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

.PHONY: help
.DEFAULT_GOAL=help
help:  ## help for this Makefile
	@grep -E '^[a-zA-Z0-9_\-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: pytest
pytest:  ## run pytest
	poetry run pytest

.PHONY: mypy
mypy:  ## run mypy
	mypy python/test_my_project.py

.PHONY: timeit
timeit:  ## run Python & Rust timeit
	poetry run python -m timeit -s "import my_project" "my_project.is_prime(1_000_000_007)"
	poetry run python -m timeit -s "import test_my_project" "test_my_project.py_is_prime(1_000_000_007)"

.PHONY: clean
clean:  ## remove temporary files
	cargo clean
	rm -rf .mypy_cache
	rm -rf .pytest_cache
	rm -rf python/__pycache__
	rm -rf python/my_project/__pycache__

.PHONY: install-lib
install-lib:  ## build & install my_project lib
	poetry run maturin develop -r

.PHONY: uninstall-lib
uninstall-lib:  ## remove my_project lib
	poetry run pip uninstall my_project -v -y
