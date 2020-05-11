node {
    stage("git checkout"){
        git credentialsId: 'github-account', url: 'https://github.com/jiaozhu/gs-spring-boot-docker'
    }
    stage("mvn build"){
        sh 'mvn -B -DskipTests clean package'
    }
    stage('build image'){
     sh 'docker build -t registry.cn-beijing.aliyuncs.com/jiaozhu/gs-spring-boot-docker:0.1 .'
    }
    stage('push image'){
     sh 'docker push registry.cn-beijing.aliyuncs.com/jiaozhu/gs-spring-boot-docker:0.1'
    }
}
