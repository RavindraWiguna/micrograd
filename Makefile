check-all:
	@echo "Running pre-commit checks on all files..."
	pre-commit run --all-files
	@echo "Pre-commit checks passed"

check:
	@echo "Running pre-commit checks on changed files..."
	pre-commit run
	@echo "Pre-commit checks passed"

install-extras:
	@echo "Installing dependencies..."
	uv sync --all-extras
	@echo "Dependencies installed successfully"

install:
	@echo "Installing the package..."
	uv sync
	@echo "Package installed successfully"

build:
	@echo "Building the package..."
	uv build
	@echo "Package built successfully"

clean:
	@echo "Cleaning build artifacts..."
	rm -rf ./dist
	@echo "Cleaned build artifacts"

test:
	@echo "Running tests..."
	uv run pytest
	@echo "Tests completed successfully"
