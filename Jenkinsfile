pipeline {
    agent any 
    triggers {
        pollSCM('* * * * *')
    }
    stages {
        stage('build') {
            steps {
                sh 'docker image build -t krishna8080/test1:1.0 .'
            }
        }
        stage('push') {
            steps {
                sh 'docker image push krishna8080/test1:1.0'
            }
        }
        stage('deploy') {
            steps {
                build 'kubectl'
            }
        }
    }
}
