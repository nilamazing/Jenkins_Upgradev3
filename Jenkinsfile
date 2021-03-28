pipeline{
    agent any
    stages{
        stage("Build and Package Application"){
            steps{
                 //maven('clean package', '/home/ndutta/workspace/Package-App-Code-Pipeline/maven-samples/single-module/pom.xml')
                 // maven('clean package', '/home/ndutta/workspace/Package-App-Code-Pipeline/maven-samples/single-module/pom.xml')
                  sh 'mvn -f /home/ndutta/workspace/Package-App-Code-Pipeline/java-tomcat-sample/pom.xml clean package'
            }
        
        post{
            success{
                archiveArtifacts artifacts: '**/*.war'
            }
         }
      }
        stage("Deploy Artifacts to Staging"){
            steps{
                build job:'Deploy_Application_Staging_item', wait: false
            }
      }
    }
}
