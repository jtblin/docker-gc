# docker-gc

Simple docker garbage collection that removes exited containers and dangling images.

## Usage

Run as cron job (every 5 minutes):

    docker run -d -v /var/run/docker.sock:/var/run/docker.sock jtblin/docker-gc

Run a one-off:

    docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock jtblin/docker-gc docker-gc

Deploy as a kubernetes daemonset:

    kubectl create -f ds.yaml