pipeline {
  agent {
    label 'todoapp'
  }
 tools {
     go 'go-1.16'
 }
 environment {
    GO111MODULE = 'auto'
 }
  stages {
    stage('Download dependencies') {
      steps {
            // sh 'go mod download golang.org/x/mod@v0.2.0'
            // sh 'go get -d golang.org/x/mod@v0.2.0'
            // sh 'sudo apt install go-dep'
            echo 'Installing dependencies'
            sh 'go version'
            sh 'go get -u golang.org/x/lint/golint'

      }
    }
    stage('Build') {
      steps {
             echo 'Compiling and building'
             sh 'go build '

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