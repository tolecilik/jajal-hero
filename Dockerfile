FROM node:18

WORKDIR /app

RUN sudo apt update && sudo apt install curl ca-certificates -y 
RUN npm install
RUN curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
RUN source ~/.bashrc
RUN nvm install 18
            
COPY trainer /trainer
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "-m", "trainer.task"]
