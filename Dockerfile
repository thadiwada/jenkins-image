#Pull a ubuntu image of version 18.10
FROM ubuntu:18.10

#Set the WORKDIR
WORKDIR /Jenkins

#Add all the soccurce code to this directory
ADD . /Jenkins

#Give permission to execute install_jenkins.sh file
RUN sudo chmod 777 ./jenkins.sh

ENTRYPOINT ["./jenkins.sh"]

CMD ["/bin/bash"]
