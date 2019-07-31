#Pull a ubuntu image of version 18.10
FROM ubuntu:18.10

#Set the WORKDIR
WORKDIR /python

#Add all the soccurce code to this directory
ADD . /python

#Give permission to execute install_jenkins.sh file
RUN  chmod 777 ./jenkins.sh

ENTRYPOINT ["./jenkins.sh"]

CMD ["/bin/bash"]
