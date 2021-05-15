pipeline {
  agent {
    label 'todoapp1'
  }
  tools {
        go 'go-1.16'
  }
  stages {
    stage('Download dependencies') {
 //      environment {
   //     path = 'PATH+EXTRA=/usr/local/go/bin '
     // }
      steps {
              sh '$path'
              sh 'go get'
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