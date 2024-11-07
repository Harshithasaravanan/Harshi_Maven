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
                    sh "mvn compile"

                    // If you're using Node.js (e.g., npm for front-end projects)
                    //sh 'npm install'
                }
            }
        }

        stage('Package') {
            steps {
                script {
                    // Example build step for Maven (if you are using Java)
                    sh "mvn package"

                    // If you're using Node.js (e.g., npm for front-end projects)
                    //sh 'npm install'
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    // Example build step for Maven (if you are using Java)
                    sh "mvn test"

                    // If you're using Node.js (e.g., npm for front-end projects)
                    //sh 'npm install'
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
