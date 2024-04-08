FROM node:18

WORKDIR /app

RUN npm install

RUN sudo apt update && sudo apt install curl ca-certificates -y \
            curl \
            
RUN curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

RUN source ~/.bashrc

RUN nvm install 18
            
COPY trainer /trainer
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "-m", "trainer.task"]
