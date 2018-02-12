// sample mapping to the codeship on this branch

pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile.build'
    }
  } 
  stages {
    stage('build') {
      steps {        
        sh 'mvn test -B'
      }
    }
  }
  

}
