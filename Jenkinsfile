pipeline {
	agent any
	tools {
    	maven 'my_mvn'
	}
	stages {
    	stage("Checkout") {   
        	steps {               	 
            	git branch: '5.2-pipeline-no-jenkinsfile', url: 'https://github.com/manikcloud/Jenkins-cicd.git'        	 
           	 
        	}    
    	}
    	stage('clean') {
        	steps {
        	sh "mvn clean"  	 
        	}
    	}
    	stage('Build') {
        	steps {
        	sh "mvn compile"  	 
        	}
    	}
   	 
    	stage("Unit test") {          	 
        	steps {  	 
            	sh "mvn test"          	 
       	}
}
}
}
