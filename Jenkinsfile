pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t my-flask-app .'
            }
        }
        stage('Test') {
            steps {
                sh '''
                    docker run -d --name flask-test -p 5000:5000 my-flask-app
                    sleep 5
                    curl -f http://localhost:5000/health
                '''
            }
            post {
                always {
                    sh 'docker rm -f flask-test || true'
                }
            }
        }
    }
}