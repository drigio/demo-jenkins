pipeline {
    agent { dockerfile true }

    stages {
        stage('Installing Java 8') {
            steps {
                sh '''#!/bin/bash
                    echo admin | sudo -S apt-get update
                    echo admin | sudo -S apt-get install -y openjdk-8-jdk
                '''
                sh 'java -version'
            }
        }

        stage('Upgrade to Java 11') {
            steps {
                sh '''#!/bin/bash
                    echo admin | sudo -S apt-get update
                    echo admin | sudo -S apt-get remove -y openjdk
                    echo admin | sudo -S apt-get purge -y --auto-remove openjdk*
                    echo admin | sudo -S apt-get install -y openjdk-11-jdk
                '''

                sh 'java -version'
            }
        }  
    }
}