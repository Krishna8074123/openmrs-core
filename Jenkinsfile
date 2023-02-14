pipeline {
    agent any 
    triggers {
        pollSCM('* * * * *')
    }
    stages {
        stage('build') {
            steps {
                sh 'docker image build -t krishna123123/test1:2.0 .'
            }
        }
        stage('push') {
            steps {
                sh 'docker image push krishna123123/test1:2.0'
            }
        }
        stage('kubectl') {
            steps {
                build 'task'
            }
        }
    }
}
