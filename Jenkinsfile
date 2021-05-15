pipeline {
  agent {
    label 'todoapp1'
  }
  tools {
        go 'go-1.16'
  }
  stages {
    stage('Download dependencies') {
      steps {
             sh 'GO111MODULE=on go get -u github.com/go-critic/go-critic/...'
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