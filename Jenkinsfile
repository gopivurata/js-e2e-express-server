pipeline {
    agent { label'jenkins-node' }
    stages {
        stage('git') {
            steps {
                git branch: 'my_branch', 
                url: 'https://github.com/gopivurata/js-e2e-express-server.git'
            }

        }
        stage('npm-install-build') {
            steps {
                sh """sudo apt install nodejs -y
                      sudo apt install npm -y
                      export PATH=/home/ubuntu/.nvm/versions/node/v16.19.0/bin:$PATH
                      npm install
                      npm run build
                    """  
            }
        }
        
    }

}