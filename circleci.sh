#! /bin/bash
# This file is a portion of the official CLI released by Circle CI @ https://github.com/circleci/local-cli
# It uses a static docker image to comply with policies for piblishing in HomeBrew for mac

REPO="circleci/picard"
TAG="0.0.4812-e4f6fcc"

docker run -it --rm \
       -e DOCKER_API_VERSION=${DOCKER_API_VERSION:-1.23} \
       -v /var/run/docker.sock:/var/run/docker.sock \
       -v $(pwd):$(pwd) \
       -v ~/.circleci/:/root/.circleci \
       --workdir $(pwd) \
       ${REPO}:${TAG} \
       circleci "$@"
