FROM ubuntu:saucy
# Update Ubuntu
RUN apt-get update && apt-get -y upgrade
# Add oracle java 7 repository
#RUN apt-get -y install software-properties-common
#RUN add-apt-repository ppa:webupd8team/java
#RUN apt-get -y update
# Accept the Oracle Java license
#RUN echo "oracle-java7-installer shared/accepted-oracle-license-v1-1 boolean true" | debconf-set-selections
# Install Oracle Java
#RUN apt-get -y install oracle-java7-installer

# Create test directory
RUN mkdir /test

# Add test file
ADD ./test.txt /test/test.txt

# Search for desired text in test directory
ENTRYPOINT grep -r 'Hello' /test | wc -l


