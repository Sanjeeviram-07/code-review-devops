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
                sh 'python3 -m pip install -r requirements.txt'
            }
        }

        stage('Code Quality') {
            steps {
                sh 'flake8 app tests'
            }
        }

        stage('Unit Tests') {
            steps {
                sh 'pytest'
            }
        }

        stage('Security Scan') {
            steps {
                sh 'bandit -r app'
            }
        }
    }
}