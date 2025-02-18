pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    git ''
                    
                    // Run shell script to deploy application
                    sh './deploy.sh'
                }
            }
        }
    }
}
