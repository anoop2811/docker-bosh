FROM ubuntu:latest 
VOLUME /tmp
RUN apt-get update
RUN apt-get -y install build-essential ruby ruby-dev libxml2-dev libsqlite3-dev libxslt1-dev libpq-dev libmysqlclient-dev zlib1g-dev wget
RUN wget https://s3.amazonaws.com/bosh-init-artifacts/bosh-init-0.0.81-linux-amd64
RUN chmod +x bosh-init*
RUN mv bosh-init* /usr/local/bin/bosh-init
RUN gem install bosh_cli --no-ri --no-rdoc
ADD bosh.yml /
CMD ["bash"]
