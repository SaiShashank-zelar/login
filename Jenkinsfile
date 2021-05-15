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
        withEnv(["PATH+EXTRA=$PATH:/usr/local/go/bin"]){
             sh 'go get GOROOT=/usr/local/go/bin'
             sh 'make build'
              //sh '$path'
              //sh 'go get'
              //sh 'go build'
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