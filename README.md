trying out source clear

# CodeShip Pro and Spring Boot starter with Jenkinsfile

[ ![Codeship Status for multibranchorg/codeship-play](https://app.codeship.com/projects/33b34200-ef63-0135-d1ff-66408b09b4d7/status?branch=master)](https://app.codeship.com/projects/271119)

<img src='https://www.cloudbees.com/sites/default/files/codeship-by-cloudbees.png'>

<img src='https://raw.githubusercontent.com/github/explore/6c6508f34230f0ac0d49e847a326429eefbfc030/topics/spring-boot/spring-boot.png'/>


This app was made via start.spring.io

Features: 

* Simple mvn build using the Dockerfile.build to describe the environment
* Postgres, redis services are available for future integration testing
* shows how to do JVM stuff with codeship pro, services steps and more. See Dockerfile.build, codeship-steps.yml and codeship-services.yml
* Runs unit and integration tests in parallel
* Placeholder for deployment stage
* Integration tests have additional services available
* Uses caching for fast builds
* Dockerfile.build used to specifify build requirements (could do similar for integration)
* Fork and reuse and adapt to your needs. 
* Jenkinsfile shows a somewhat idiomatic equivalent of the codeship pipeline that works in Jenkins with docker pipeline installed. 


See: https://documentation.codeship.com/pro/languages-frameworks/java/

See also: https://github.com/multibranchorg/codeship-play/blob/simplest for a simpler version of all this. 

