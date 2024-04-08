FROM debian:buster-slim

RUN groupadd --gid 1000 node \
  && useradd --uid 1000 --gid node --shell /bin/bash --create-home node

ENV NODE_VERSION 18.20.1

RUN sudo apt update && sudo apt install curl ca-certificates -y
    curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash \
    source ~/.bashrc \
RUN nvm install 18

COPY trainer /trainer
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "-m", "trainer.task"]
