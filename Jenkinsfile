pipeline {
  agent any
  stages {
    
    stage('Build docker image') {
      steps {
        sh 'docker build -t httpd:${BUILD_NUMBER} .'
		sh 'docker images'
      }
    }

    stage('create container') {
      steps {
		def SUCCESS_BUILD= sh 'wget -qO- http://localhost:8080/job/DockerTest/lastSuccessfulBuild/buildNumber'
		echo ${SUCCESS_BUILD}
		echo 'removing old container'
		sh 'docker stop httpd:${SUCCESS_BUILD}'
		echo '-----'
		echo 'staring new container'
        sh 'docker run -d -p 8082:80 httpd:${BUILD_NUMBER}'
      }
    }

  }
}