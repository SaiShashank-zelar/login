pipeline {
  agent {
    label 'todoapp1'
  }
  stages {
    stage('Download dependencies') {
      steps {
           withGo(go : 'go-1.16'){
                sh 'go get '
           }
           withGo(go : 'go-1.16') {
                sh 'go build'
           }


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