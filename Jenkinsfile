pipeline {
	agent any
	
	stages {
		stage('Build') {
			steps {
				sh 'mvn build'
			}
		}
		stage('Test') {
			steps {
				sh 'mvn test'
				junit 'reports/**/*.xml'
			}
		}
		stage('Deploy') {
			steps {
				sh 'make publish'
			}
		}
	}
 }