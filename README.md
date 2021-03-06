dockerTest
==========

Docker build scripts and shell scripts to demonstrate on-demand testing capabilities. The test is simple and found in the Dockerfile in this repository: download web content and grep for a specified word. This concept can be extended to run web integration tests upon startup. 

Files: <p>
firstTest - Dockerfile containing content and test <p>
pipeline.sh - Shell script executing tests using Docker. Usage: ./pipeline.sh _desiredTestName_ <p>
QA_pullrun.sh - Assuming success by pipeline.sh, this script would be used by a QA member to pull the image from the public Docker index and independently verify success.

***
Usage: <p>
Clone the repository. <p>
Run ./pipeline.sh _desiredTestName_ <p>
This will execute the test and push the image named as desiredTestName.


***
To improve: <p>
As of the initial commit, the test result as emitted by the Docker run is coupled with the pipeline.sh script. An improvement would remove that coupling.

***
Extremely impressed with Docker's approach. docker build, docker run, Docker done. 
