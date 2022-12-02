pipeline {
    agent  { label 'DOCKER' } 
    stages {
        stage('vcs') {
            steps {
                git url: "https://github.com/nagvenkat1/install-docker.git",
                    branch: "main"
            }
        }
        stage('docker') {
            steps {
                sh 'sh docker.sh'
            }
        }
    }

}
