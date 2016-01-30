FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y -qq git python-pip
RUN pip install shutit

WORKDIR /opt
# Change the next two lines to build your ShutIt module.
RUN git clone https://github.com/ianmiell/shutit-jenkins-plugin-dev.git
WORKDIR /opt/shutit-jenkins-plugin-dev
RUN shutit build --delivery dockerfile

CMD ["/bin/bash"]
