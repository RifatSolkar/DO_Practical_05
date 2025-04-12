pipeline {     
	agent any 
 
    stages {       
		stage('Clone Repository') {     
			steps { 
                git branch: 'main', url: 'https://github.com/RifatSolkar/DO_Practical_05.git' 
            } 
        } 
 
        stage('Build Docker Image') { 
            steps {               
				script {                  
					dir('Q3') {                        
						docker.build("java-hello-world-app", ".") 
                    } 
                } 
            } 
        } 
 
        stage('Run Docker Container') { 
            steps {                 
				script { 
                    docker.image("java-hello-world-app").run() 
                } 
            } 
        } 
    } 
} 
