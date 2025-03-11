pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    echo "Building Docker image..."
                    sh 'docker build -t localhost:5000/kubernetes-react-app .'
                }
            }
        }
        stage('Push') {
            steps {
                script {
                    echo "Pushing image to registry..."
                    sh 'docker push localhost:5000/kubernetes-react-app'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    echo "Deploying to Kubernetes..."
                    sh 'kubectl apply -f kubernetes/deployment.yaml'
                    sh 'kubectl apply -f kubernetes/service.yaml'
                }
            }
        }
    }
    post {
        success {
            echo "Pipeline completed successfully!"
        }
        failure {
            echo "Pipeline failed."
        }
    }
}