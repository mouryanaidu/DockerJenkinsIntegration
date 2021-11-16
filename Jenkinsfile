pipeline{

agent any
stages{
/* stage('initialize'){
    steps{
checkout scm
}
} */

stage('compile'){
    steps{
 sh '''
mvn compile
'''
}
}


/*stage('unittest'){
  steps{  
sh '''
mvn test
'''
}  
  
post{
        always{
             junit testResults:"target/surefire-reports/*.xml"
        }
    }
}*/
stage('build'){
    steps{
sh '''
mvn package -DskipTests
'''
}
}

stage('archive'){
steps{
archiveArtifacts artifacts: '**/*.war'
}
}

stage('Deploy'){
steps{
sh '''
    
    docker build -t 10.20.3.7:5000/mywebapp
    docker push 10.20.3.7:5000/my-app:2.0.0'
'''
}
}
}
}
