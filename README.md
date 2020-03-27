# FenidEdu Docker Image

This installation guide was provided by FenixEdu to run localhost server:
https://confluence.fenixedu.org/display/ACADEMIC/Installation

To run this Docker image:
    1. docker build -t fenixedu .
    2. docker run -p 8080:8080 -it fenixedu

Building takes around 15 minutes
Running takes almost 20 minutes due to issue between Java Security and Maven
