// Jenkinsfile approximating the codeship-services/steps.yml files. 

pipeline {
  agent none
  stages {
    stage('build') {
         agent {         
           dockerfile {
                filename 'Dockerfile.build'
           }
         }
         steps {
           checkout scm
           sh 'mvn package -DskipTests -B'
           sh 'touch target/persists'
           stash includes: './target', name: 'binaries'          
         }
    }
    
    stage('tests') {
      parallel {
        stage('unit tests') {
          agent {
            dockerfile {            
              filename 'Dockerfile.build'           
            }
          }
          steps {
            unstash 'binaries'
            sh 'mvn test -Punit -B'
          }
        }
        stage('integration tests') {
          agent {
            docker {
              image 'busybox'
            }
          }
          steps {
            unstash 'binaries'
            sh 'echo integration tests'
          }
        }      
      }
    }
    
    stage('deploy') {
      agent {
        dockerfile  {
          filename 'Dockerfile.build'
        }       
      }
      
      steps {
        unstash 'binaries'
        sh 'ls -lah target/'
        
      }
    
    }

    
    
  }
}
