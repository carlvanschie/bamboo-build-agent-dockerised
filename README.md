# Bamboo Build Agent v6.3.2

This project is here to help build a simple docker based bamboo build agent.

Currently this installs:

- Java 8
- Git
- Maven
- Gradle


## Build
To build this image you will need to download the atlassian agent installer from your bamboo installation and put that into git repo folder as atlassian-bamboo-agent-installer.jar
(https://confluence.atlassian.com/bamboo/bamboo-remote-agent-installation-guide-289276832.html)

You can use the following curl command to do this, please replace the IP and/or the version number of the jar.
~~~
 $ curl 172.17.1:8085/agentServer/agentInstaller/atlassian-bamboo-agent-installer-6.3.2.jar > atlassian-bamboo-agent-installer.jar 
~~~

To build this image run, again please replace the version number to the same as the bamboo agent you have downloaded:
~~~
 $ docker build . -t bamboo-agent:6.3.2
~~~


## Run

Environment requirements:

- BAMBOO_HOST - Bamboo Server Host Name or IP
- BAMBOO_PORT - Bamboo Server Port Number (8085)
- AUTHENTICATION_KEY - Authentication key for your Bamboo server

Exmaple:
~~~
 $ docker run -e BAMBOO_HOST=172.17.0.1 -e BAMBOO_PORT=8085 -e AUTHENTICATION_KEY=<INSERT_BAMBOO_AUTH_KEY> bamboo-agent:6.3.2
~~~
