# FenixEdu Docker Image

Link to video of execution:  
https://pitt.box.com/s/0zacpsizs7krzb26t90ntb6fvumh33bo

Important timestamps in video:  
19:30 - ProtocolHandler starts  
29:22 - localhost finally running and accessible

This installation guide was provided by FenixEdu to run localhost server:  
https://confluence.fenixedu.org/display/ACADEMIC/Installation

Proper dependency versions were located through the issue tracker on JIRA here:  
https://jira.fenixedu.org/browse/ACADEMIC

To run this Docker image:
1. docker build -t fenixedu .
2. docker run -p 8080:8080 -it fenixedu

Building takes around 20 minutes.  
Running takes almost 30 minutes.
