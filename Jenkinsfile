pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                // Checkout the code from the repository
                git 'https://github.com/username/your-repo.git' // Replace with your repository URL
            }
        }

        stage('Build Docker Image') {
            steps {
                echo "Starting Docker build..."
                // Build the Docker image
                sh 'docker build -t your_image_name .' // Ensure this points to the correct directory containing your Dockerfile
                echo "Docker build completed!"
            }
        }

        stage('Run Tests') {
            steps {
                echo "Running tests..."
                // Optionally run tests or any other commands here
                // sh 'docker run --rm your_image_name npm test' // Example for running tests if applicable
            }
        }

        stage('Deploy to Environment') {
            steps {
                echo "Deploying application..."
                // Deploy your application (e.g., run the container)
                sh 'docker run -d --name my_docker -p 5000:5000 your_image_name'
            }
        }
    }

    post {
        always {
            // Clean up any resources or notify on completion
            echo "Cleaning up..."
            sh 'docker rm -f my_docker || true' // Remove the container if it exists
        }
    }
}

