pipeline {
    agent  { label 'node-1' }
    stages {
        stage('git') {
            steps {
                git branch: 'my_branch', 
                url: 'https://github.com/gopivurata/js-e2e-express-server.git'
            }

        }
        stage('npm-install-build') {
            steps {
                sh """export PATH=/home/ubuntu/.nvm/versions/node/v16.17.1/bin:$PATH
                      npm install
                      npm run build
                    """  
            }
        }
        stage('archive results') {
            steps {
                junit '**/surefire-reports/*.xml'
            }
        }
    }

}