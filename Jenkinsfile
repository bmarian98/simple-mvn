pipeline{

agent{
  label 'maven'
}

stages {
  stage('Build'){
	steps{
	  echo 'Build maven project...'
	  sh 'mvn clean install'
	}
  }
  
  stage('Archive artificats'){
	steps{
	  echo 'Archiving build artifacts...'
	  archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true
	}
  }
}

}
