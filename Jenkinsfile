pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Install Dependencies') {
            steps {
                sh '''
                    python3 -m venv .venv
                    .venv/bin/pip install --upgrade pip
                    .venv/bin/pip install -r requirements.txt
                '''
            }
        }

        stage('Code Quality') {
            steps {
                sh '.venv/bin/flake8 app tests'
            }
        }

        stage('Unit Tests') {
            steps {
                sh '.venv/bin/pytest'
            }
        }

        stage('Security Scan') {
            steps {
                sh '.venv/bin/bandit -r app'
            }
        }
    }
}