#! /usr/bin/env bash
docker build -t home-lab-conjur-cli-configure-deploy:local-test .
# docker run --entrypoint /bin/bash -it --rm -v $HOME/.ssh/home_lab_ansible:/root/.ssh/id_rsa home-lab-conjur-cli-configure-deploy:local-test
docker run --rm --env-file .env -v $HOME/.ssh/home_lab_ansible:/root/.ssh/id_rsa home-lab-conjur-cli-configure-deploy:local-test
