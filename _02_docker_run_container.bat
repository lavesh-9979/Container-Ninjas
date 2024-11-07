
set CONTAINER_NAME=my-cloud-computing-project

docker ps -q -f name=%CONTAINER_NAME%
if not errorlevel 1 (
    echo Stopping and removing existing container...
    docker stop %CONTAINER_NAME%
    docker rm %CONTAINER_NAME%
)

docker run -d --name %CONTAINER_NAME% -p 8080:80 container-ninjas:1.0