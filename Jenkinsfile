pipeline {
  agent any
  stages {
    
    stage('Build docker image') {
      steps {
        sh 'docker build -t httpd:${BUILD_NUMBER} .'
		sh 'docker images'
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploying....'
      }
    }

  }
}