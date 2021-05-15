pipeline {
  agent {
    label 'todoapp'
  }
  tools {
        go 'go-1.16'
  }
  environment {
              GO111MODULE="auto"
  }
  stages {
    stage('Download dependencies') {
      steps {
        sh '''
           export GOPATH=/go
        '''
        sh '''
           go build /usr/local/go/bin
        '''
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