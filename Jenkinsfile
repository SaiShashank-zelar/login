pipeline {
  agent {
    label 'todoapp1'
  }
  tools {
        go 'go-1.16'
  }
  stages {
    stage('Download dependencies') {
      environment {
         GOROOT='/usr/local/go/bin'
      }
      steps {
             sh 'go get $GOROOT'
             sh 'make build'
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