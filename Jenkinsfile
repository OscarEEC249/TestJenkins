node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

        app = docker.build("jenkins-test")
    }

    // stage('Push image') {
    //     /* Finally, we'll push the image with two tags:
    //      * First, the incremental build number from Jenkins
    //      * Second, the 'latest' tag.
    //      * Pushing multiple tags is cheap, as all the layers are reused. */
    //     docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
    //         app.push("${env.BUILD_NUMBER}")
    //         app.push("latest")
    //     }
    stage('Push image') {
        withDockerRegistry([ credentialsId: "6544de7e-17a4-4576-9b9b-e86bc1e4f903", url: "oscareec249/jenkinstest" ]) {
          sh 'docker push "${env.BUILD_NUMBER}'
          sh 'docker push latest'
        }
    }
}