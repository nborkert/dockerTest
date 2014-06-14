FROM ubuntu:saucy
# Update Ubuntu
RUN apt-get update && apt-get -y upgrade

# Create test directory
RUN mkdir /test

# Add test file
ADD ./test.txt /test/test.txt

# Search for desired text in test directory
ENTRYPOINT grep -r 'Hello' /test | wc -l


