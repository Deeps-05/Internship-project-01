pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    git 'https://github.com/Deeps-05/Internship-project-01.git'
                    
                    // Run shell script to deploy application
                    sh 'chmod +x deploy.sh'
                }
            }
        }
    }
}
