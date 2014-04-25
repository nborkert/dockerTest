dockerTest
==========

Docker build scripts and shell scripts to demonstrate on-demand testing capabilities.

Files:
firstTest - Dockerfile containing content and test
pipeline.sh - Shell script executing tests using Docker. Usage: ./pipeline.sh <desiredTestName>
QA_pullrun.sh - Assuming success by pipeline.sh, this script would be used by a QA member to pull the image from the public Docker index and independently verify success.

Usage:
Clone the repository.
Run ./pipeline.sh <desiredTestName>
This will execute the test and push the image named as <desiredTestName>.

To improve:
As of the initial commit, the test result as emitted by the Docker run is coupled with the pipeline.sh script. An improvement would remove that coupling. 
