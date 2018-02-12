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
           sh 'mvn package -DskipTests -B'
           sh 'touch target/persists'
           stash includes: './target', name: 'target'          
         }
    }
    
    stage('tests') {
      parallel {
        stage('unit tests') {
          agent {
            dockerfile {            
              filename 'Dockfile.build'           
            }
          }
          steps {
            unstash 'target'
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
            unstash 'target'
            sh 'echo integration tests'
          }
        }      
      }
    }
    
    stage('deploy') {
      agent {
        dockerfile  {
          filename: 'Dockerfile.build'
        }       
      }
      
      steps {
        unstash 'target'
        sh 'ls -lah target/'
        
      }
    
    }

    
    
  }
}
