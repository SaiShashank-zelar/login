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
             sh 'go mod download'
             sh 'go get '
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