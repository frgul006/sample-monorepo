pipeline {
   agent any
   node {
      checkout scm
   }
   stages {
     stage ("Lint") {
         steps {
            sh "yarn"
         }
      }
      stage ("Test") {
         steps {
            sh "yarn"
         }
      }
      stage ("Build") {
         steps {
            sh "yarn"
         }
      }
   }
}
