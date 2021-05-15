pipeline {
  agent {
    label 'todoapp'
  }
  stages {
    stage('Download dependencies') {
      steps {
        sh '''
            mkdir /go
            cd /go/login
        '''
        sh '''
           export GOPATH=/go
        '''
        sh '''
           apt install go-dep
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
            zip -r ../login.zip login
        '''
      }
    }
  }
}