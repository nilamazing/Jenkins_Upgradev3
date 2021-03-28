pipeline{
    agent any
    stages{
        stage("Build and Package Application"){
            steps{
                 maven("clean package","/home/ndutta/workspace/Package-App-Code-Pipeline/maven-samples/single-module/pom.xml")
            }
        }
        stage("Publish the Artifacts"){
            steps{
                publishers{
                    archiveArtifacts('**/*.jar')
                }
            }
        }
    }
}