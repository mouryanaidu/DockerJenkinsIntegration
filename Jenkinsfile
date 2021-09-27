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

    
    docker build -t profinchsolutions/modified-ubuntu
    docker tag profinchsolutions/modified-ubuntu 10.20.3.10:5000/profinchsolutions/modified-ubuntu

    docker run -d -p 10.20.3.10:5000/profinchsolutions/modified-ubuntu

'''
}
}
}
}
