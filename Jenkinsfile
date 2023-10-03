pipeline {
    agent any
    tools {
        maven 'my_mvn'
    }
    stages {
        stage("Checkout") {   
            steps {               	 
                git branch: '8.1-addressbook', url: 'https://github.com/manikcloud/Jenkins-cicd.git'        	 
             }    
        }
        stage('Maven Clean') {
            steps {
                sh "mvn clean"  	 
            }
        }
        stage('Maven Build') {
            steps {
                sh "mvn compile"  	 
            }
        }
        stage("Unit Test") {          	 
            steps {  	 
                sh "mvn test"          	 
            }
        }
        stage("SonarQube Analysis") {
            steps {
                withCredentials([usernamePassword(credentialsId: 'sonarqube', passwordVariable: 'password', usernameVariable: 'username')]) {
                    withSonarQubeEnv('sonarqube-server') {
                        sh "mvn verify sonar:sonar -Dsonar.host.url=http://3.82.130.168:9000 -Dsonar.login=${username} -Dsonar.password=${password}"
                    }
                }
            }
        }
        stage("Maven Package") {
            steps {
                sh "mvn package"
            }
        }
        stage("Deploy On Server") {          	 
            steps {  	 
                deploy adapters: [tomcat9(credentialsId: 'tomcat-9', path: '', url: 'http://3.82.130.168:8090')], contextPath: '/addressbook', war: '**/target/*.war'         	 
            }
        }  	
    }
    post {
        always {
            junit 'target/surefire-reports/*.xml'
        }
        success {
            echo "App URL: http://3.82.130.168:8090/addressbook/"
            emailext (
                to: 'varunmanik1@gmail.com',
                subject: "SUCCESS: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
                body: "The job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' completed successfully."
            )
        }
        failure {
            emailext (
                to: 'varunmanik1@gmail.com',
                subject: "FAILURE: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
                body: "The job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' failed."
            )
        }
    }
}

