# docker-android
android installation in a docker file

This docker images shows how to install an android environment and uset the [sdkmanager](https://developer.android.com/studio/command-line/sdkmanager.html) to install packages.

It contains 2 bash files, which must be executed directly in the directory:

* build.bash: will build the docker image
* run.bah: will run a new docker container of the image and start the bash shell in interactive mode