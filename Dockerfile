FROM node:18

WORKDIR /

RUN npm install

RUN sudo apt update && sudo apt install curl ca-certificates -y
            curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
            source ~/.bashrc
            nvm install 18
            
COPY trainer /trainer
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "-m", "trainer.task"]
