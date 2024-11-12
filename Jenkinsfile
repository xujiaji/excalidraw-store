pipeline {
    agent any

    stages {
        stage('Docker构建') {
            steps {
                sh "docker rm -f 'Excalidraw-Store'"
                sh "docker image rm xujiaji/excalidraw-store"
                sh "docker build -t xujiaji/excalidraw-store ."
            }
        }
        stage('部署') {
            steps {
                sh "docker run --name 'Excalidraw-Store' -d  --net='bridge' --pids-limit 2048 -e TZ=\"Asia/Shanghai\" -e HOST_OS=\"Unraid\" -e HOST_HOSTNAME=\"Babay\" -e HOST_CONTAINERNAME=\"Excalidraw-Store\" -l net.unraid.docker.managed=dockerman -l net.unraid.docker.icon='https://raw.githubusercontent.com/Olprog59/unraid-templates/main/excalidraw/excalidraw.ico' -p '5002:8080/tcp' xujiaji/excalidraw-store"
            }
        }
    }
}
