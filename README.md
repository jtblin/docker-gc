# docker-gc

Simple docker garbage collection that removes exited containers and dangling images via a cron job running every 5 minutes.

## Usage

    docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/bin/docker jtblin/docker-gc