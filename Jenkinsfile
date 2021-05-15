pipeline {
  agent {
    label 'todoapp'
  }
  tools {
        go 'go-1.16'
  }
  environment {
              GO111MODULE = 'on'
  }
  stages {
    stage('Download dependencies') {
      steps {
        sh '''
           go build gopkg.in/couchbase/gocb.v1
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