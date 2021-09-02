docker stop $(docker ps -a -q)
docker rm   $(docker ps -a -q)
docker build -t kukuh-apache2 .
docker run -dit -p 8080:80 --name my-running-app kukuh-apache2
