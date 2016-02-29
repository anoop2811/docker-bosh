# docker-bosh
A docker container including all the bosh cli installed

Steps to follow:
=================
1. Install docker-machine on your computer (If on OSX, better to install the docker toolbox which includes docker-machine)
2. Install virtual machine on your computer
3. Run docker-machine create bosh driver --virtualbox
4. Clone this repo into a directory say $BOSH_HOST_DIR
5. Run eval $(docker-machine env bosh)
6. Run docker build -t pivotal/bosh .
7. Run docker run -it pivotal/bosh bash
8. You should be in your docker vm now.
9. Edit the bosh.yml file in the root dir and replace all the placeholders

