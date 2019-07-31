#Pull a ubuntu image of version 18.10
FROM ubuntu:18.10

#Set the WORKDIR
WORKDIR /app

#Add all the soccurce code to this directory
ADD . /app

#Give permission to execute install_jenkins.sh file
RUN chmod +x "/.jenkins.sh"

ENTRYPOINT ["jenkins.sh"]
