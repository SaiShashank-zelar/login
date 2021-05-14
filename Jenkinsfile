pipeline {
  agent any
  stages {
    stage('Download dependencies') {
      steps {
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