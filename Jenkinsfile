pipeline {
  agent {
    label 'todoapp1'
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
             sh 'go mod download golang.org/x/mod@v0.2.0'
             sh 'go get -d golang.org/x/mod@v0.2.0 '
             sh 'go build -o *.go'

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