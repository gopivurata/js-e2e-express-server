pipeline {
    agent  { label 'node-1' }
    stages {
        stage('git') {
            steps {
                git branch: 'my_branch', 
                url: 'https://github.com/gopivurata/js-e2e-express-server.git'
            }

        }
        stage('build') {
            steps {
                sh '/usr/share/maven/bin/mvn package'
            }
        }
        stage('archive results') {
            steps {
                junit '**/surefire-reports/*.xml'
            }
        }
    }

}