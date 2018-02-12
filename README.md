# CodeShip Pro and Spring Boot starter

<img src='https://raw.githubusercontent.com/github/explore/6c6508f34230f0ac0d49e847a326429eefbfc030/topics/spring-boot/spring-boot.png'/>

<img src='https://www.cloudbees.com/sites/default/files/codeship-by-cloudbees.png'>

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


See: https://documentation.codeship.com/pro/languages-frameworks/java/

See also: https://github.com/multibranchorg/codeship-play/blob/simplest for a simpler version of all this. 

