pipeline {
    agent any

    
    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from your GitHub repo
                git url: 'https://github.com/Harshithasaravanan/Harshi_Maven.git', branch: 'main'
            }
        }
        stage('Build') {
            steps {
                script {
                    // Example build step for Maven (if you are using Java)
                    sh 'zsh -c"mvn compile"'

                    // If you're using Node.js (e.g., npm for front-end projects)
                    //sh 'npm install'
                }
            }
        }

        stage('Package') {
            steps {
                script {
                    // Example build step for Maven (if you are using Java)
                    sh 'zsh -c"mvn package"'

                    // If you're using Node.js (e.g., npm for front-end projects)
                    //sh 'npm install'
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    // Example build step for Maven (if you are using Java)
                    sh 'zsh -c"mvn test"'

                    // If you're using Node.js (e.g., npm for front-end projects)
                    //sh 'npm install'
                }
            }
        }

        stage('Build and Deploy Docker Image') {
            steps {
                script{

                    sh 'zsh -c"docker build -t springboot-harshi4-maven:latest ."'
                    sh 'zsh -c"docker run -d -p 8090:8090 -p 50090:50090 springboot-harshi4-maven:latest"'
                }
            }
        }
    }

    post {
        always {
            // Clean up actions or notifications (e.g., Slack, email)
            echo 'Pipeline complete!'
        }

        success {
            echo 'Pipeline succeeded!'
        }

        failure {
            echo 'Pipeline failed!'
        }
    }
}
