FROM ubuntu:16.04

RUN apt-get update && apt-get install -y openjdk-8-jdk curl git gradle maven

COPY  atlassian-bamboo-agent-installer.jar /opt/atlassian-bamboo-agent-installer.jar

ENTRYPOINT java -jar /opt/atlassian-bamboo-agent-installer.jar http://"$BAMBOO_HOST":"$BAMBOO_PORT"/agentServer/ -t "$AUTHENTICATION_KEY" 
