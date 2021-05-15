pipeline {
  agent {
    label 'todoapp'
  }
  tools {
        go 'go-1.16'
  }
  stages {
    stage('Download dependencies') {
      environment {
        path = 'export PATH=$PATH:/usr/local/go/bin'
      }
      steps {
              sh 'go get $path'
              sh 'make build'
        }
      }
    stage ('Prepare Artifacts') {
      steps {
        sh '''
            zip -r ../login.zip login
        '''
      }
    }
  }
}