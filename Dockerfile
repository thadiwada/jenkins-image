#Pull a ubuntu image of version 18.10
FROM ubuntu:18.10

#Maintainer of this docker build
MAINTAINER ramesh

#User to build this image
#USER docker

#Set the WORKDIR
WORKDIR /Jenkins

#Add all the source code to this directory
ADD . /Jenkins

#Give permission to execute install_jenkins.sh file
RUN chmod +x ./install_jenkins.sh

EXPOSE 8080

ENTRYPOINT ["./install_jenkins.sh"]

CMD ["/bin/sh"]
