pipeline {
  agent {
    label 'todoapp'
  }
  stages {
    stage('Download dependencies') {
      steps {
             sh 'go mod download golang.org/x/mod@v0.2.0'
             sh 'go get -d golang.org/x/mod@v0.2.0'
             sh 'apt install go-dep'
             sh 'go build'

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