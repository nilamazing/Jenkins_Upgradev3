pipeline{
    agent any
    stages{
        stage("Init"){
            steps{
                 echo "Initiating workspace"
            }
        }
        stage("Checkout"){
            steps{
                 echo "Checkout the workspace"
            }
        }
        stage("Install, Build & Test"){
            steps{
                 echo "Installing dependencies"
                 echo "Build the project"
                 echo "Unit testing the build"
            }
        }
        stage("Deploy"){
            steps{
                 echo "Deploying artefact"
            }
        }
    }
}