# Docker

## Commands

docker build --rm -t alex/httpd .

docker run --name 'httpd3' --log-driver=journald -p 8080:80 -it alex/httpd /bin/bash

*Borrar tots els containers*

docker rm $(docker ps -qa) -f
