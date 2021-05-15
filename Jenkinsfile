pipeline {
  agent {
    label 'todoapp'
  }
  stages {
    stage('Download dependencies') {
      steps {
        sh '''
           export GOPATH=/go
        '''
        sh '''
           go get
        '''
        sh '''
           go build
        '''
      }
    }
    stage ('Prepare Artifacts') {
      steps {
        sh '''
            mkdir /go
            cd /go/login
            zip -r ../login.zip login
        '''
      }
    }
  }
}