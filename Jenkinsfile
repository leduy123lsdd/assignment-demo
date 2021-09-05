pipeline {
  agent any
  stages {
    stage("Build") {
      steps {
        sh '''
        sh jenkins/build/mvn.sh mvn -B -DskipTests clean package
        sh jenkins/build/build.sh
        '''
      }

    }

    stage("Test") {
      steps {
        sh '''
        sh jenkins/test/test.sh mvn test
        '''
      }
    }

    stage("Deploy") {
      steps {
        sh 'echo "this is deploy"'
      }
    }
  }
}
