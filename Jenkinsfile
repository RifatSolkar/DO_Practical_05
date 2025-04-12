pipeline {
    agent any

    environment {
        IMAGE_NAME = 'mydockerhubusername/my-java-app'
    }

    stages {

        stage('Checkout Code') {
            steps {
                git credentialsId: 'github-credentials', url: 'https://github.com/RifatSolkar/DO_Practical_05.git', branch: 'main'
            }
        }
        stage('Build Java App') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${IMAGE_NAME}:${BUILD_NUMBER}")
                }
            }
        }

        stage('Push to DockerHub') {
            steps {
                withDockerRegistry([credentialsId: 'dockerhub-credentials-id', url: '']) {
                    script {
                        docker.image("${IMAGE_NAME}:${BUILD_NUMBER}").push()
                    }
                }
            }
        }

        stage('Deploy (Optional)') {
            steps {
                echo "Deploy the app using Docker/Kubernetes, etc."
                // Example:
                // sh 'docker run -d -p 8080:8080 mydockerhubusername/my-java-app:BUILD_NUMBER'
            }
        }
    }

    post {
        always {
            echo "Pipeline completed"
        }
    }
}
