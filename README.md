# Code Review DevOps

A simple Python application created as the starting point for an automated
Code Review / DevSecOps CI/CD project.

## Project Structure

```text
code-review-devops/
├── app/
│   ├── __init__.py
│   └── calculator.py
├── tests/
│   ├── __init__.py
│   └── test_calculator.py
├── .gitignore
├── Dockerfile
├── README.md
└── requirements.txt
```

## Run Locally

### 1. Create a virtual environment

```bash
python -m venv .venv
```

### 2. Activate it

Windows PowerShell:

```powershell
.\.venv\Scripts\Activate.ps1
```

Linux/macOS:

```bash
source .venv/bin/activate
```

### 3. Install dependencies

```bash
pip install -r requirements.txt
```

### 4. Run tests

```bash
pytest
```

### 5. Run code quality checks

```bash
flake8 app tests
```

### 6. Run security scan

```bash
bandit -r app
```

## Docker

Build:

```bash
docker build -t code-review-devops .
```

Run:

```bash
docker run --rm code-review-devops
```

## DevOps Roadmap

This repository will later be extended with:

- Jenkins CI/CD
- SonarQube
- Trivy
- Docker image publishing
- Amazon ECR
- AWS EC2 deployment
