pipeline {
  agent any
  stages {
    stage('checkout') {
		steps{
		checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: '9dc51d16-dfc8-4f08-a9c0-316ad9f90dc5', url: 'https://github.com/KRajeevReddy/test.git']]])
		}
      
    }

    stage('Test') {
      steps {
        echo 'Testing..'
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploying....'
      }
    }

  }
}