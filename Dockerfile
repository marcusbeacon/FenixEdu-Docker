FROM ubuntu:18.04

# move fenix source folder over
COPY demo-webapp /demo-webapp

# install dependencies
RUN apt-get update
RUN apt-get install -y sudo
RUN apt-get install -y apt-utils
RUN sudo apt-get install -y maven
RUN sudo apt-get install -y git
RUN sudo apt-get install -y mysql-server 
RUN sudo apt-get install -y mysql-client
RUN sudo apt-get install -y openjdk-8-jdk

# edit .bashrc for fenix maven project to work
RUN echo "export JAVA_OPTS='-server -Xms256m -Xmx1024m'" >> ~/.bashrc
RUN echo "export MAVEN_OPTS='$JAVA_OPTS -Dorg.apache.jasper.compiler.Parser.STRICT_QUOTE_ESCAPING=false'" >> ~/.bashrc

# additional commands to create fenixedu maven project
ADD commands.sh /
RUN chmod +x /commands.sh
CMD ["/commands.sh"]