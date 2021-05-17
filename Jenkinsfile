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
            // sh 'go mod download golang.org/x/mod@v0.2.0'
            // sh 'go get -d golang.org/x/mod@v0.2.0'
            // sh 'sudo apt install go-dep'
            echo 'Installing dependencies'
            sh 'go version'
            sh 'go get -u github.com/direnv/direnv'

      }
    }
    stage('Build') {
      steps {
             echo 'Compiling and building'
            // sh 'go mod init github.com/direnv/direnv '
             sh 'go mod download github.com/dgrijalva/jwt-go'
             sh 'go build '

      }
    }
    stage ('Prepare Artifacts') {
      steps {
        sh '''
            zip -r ../login.zip direnv
        '''
      }
    }
  }
}