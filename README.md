# Jenkins Training Environment

## A training environment for jenkins, with a bunch of useful stuff installed in the jenkins container, along with docker and docker-compose. Also includes a gogs server configured with a postgresql server to help with modelling gitflow type processes.

### Usage:
This comes with a makefile that can do a lot of stuff for you. The first and default target is build, which will build an image that can run `make` and which contains a clone of this repo. You can build it yourself by copying the docker command from the build target. If you're not on linux and you don't have the `$RANDOM` variable you can just put any value at all in there - it relates to a docker 'trick' that forces the re-execution of the git clone line (docker will not detect changes in git and will not rebuild solely based on a commit to that repo). If you are on a linux system, then you want to remove one of the `$$`'s because you only need that syntax in the makefile itself.

A docker-compose file actually brings up jenkins, gogs, and postgres and wires them together with some volumes so that you don't loose anything between runs. The composition uses my own jenkins image, which is based off `jenkins/jenkins:lts-alpine`, but which adds in some other stuff and pre-pulls a common set of plugins to save time at startup.


