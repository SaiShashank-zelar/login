pipeline {
  agent {
    label 'todoapp'
  }
  tools {
        go 'go-1.16'
  }
  stages {
    stage('Download dependencies') {
      steps {
        withEnv(["PATH=$PATH:/usr/local/go/bin"]){
              sh 'go get '
              sh 'make build'
        }
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