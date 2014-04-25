dockerTest
==========

Docker build scripts and shell scripts to demonstrate on-demand testing capabilities.

Files: <p>
firstTest - Dockerfile containing content and test <p>
pipeline.sh - Shell script executing tests using Docker. Usage: ./pipeline.sh _desiredTestName_ <p>
QA_pullrun.sh - Assuming success by pipeline.sh, this script would be used by a QA member to pull the image from the public Docker index and independently verify success.
<p><p>
Usage: <p>
Clone the repository. <p>
Run ./pipeline.sh _desiredTestName_ <p>
This will execute the test and push the image named as desiredTestName.
<p><p>
To improve: <p>
As of the initial commit, the test result as emitted by the Docker run is coupled with the pipeline.sh script. An improvement would remove that coupling. 
