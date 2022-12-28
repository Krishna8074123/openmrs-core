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
<<<<<<< HEAD
        stage('image push') {
=======
        stage('push') {
>>>>>>> beed5cd3f67eea3840101a54c9986a12b83ac54b
            steps {
                sh 'docker image push krishna8080/test1:1.0'
            }
        }
        stage('deploy') {
            steps {
<<<<<<< HEAD
                sh 'kubectl get po'
            }
        }
    }
}
=======
                sh 'kubectl apply -f deploy.yml'
            }
        }
    }
}
>>>>>>> beed5cd3f67eea3840101a54c9986a12b83ac54b
