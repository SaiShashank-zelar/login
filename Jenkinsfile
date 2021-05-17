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
             sh 'go get -o go main.go'
             sh 'go build -o go main.go'
              //sh '$path'
              //sh 'go get'
              //sh 'go build'
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