pipeline {
    agent any
    tools {
        maven 'my_mvn'
    }
    stages {
        stage("Checkout") {   
            steps {               	 
                git branch: 'main', url: 'https://github.com/manikcloud/manik-calculator.git'        	 
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
        stage("Maven Package") {
            steps {
                sh "mvn package"
            }
        }
        stage("Deploy On Server") {          	 
            steps {  	 
                deploy adapters: [tomcat9(credentialsId: 'tomcat-9', path: '', url: 'http://44.206.250.166:8090/')], contextPath: '/manik-calculator', war: '**/target/*.war'         	 
            }
        }  	
    }
}
