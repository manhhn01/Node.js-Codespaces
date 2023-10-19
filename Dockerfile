from ubuntu:jammy

WORKDIR /home/cs

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    wget curl \
    jq \
    fish \
    nodejs

RUN npm install -g yarn

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

# install omf
RUN curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# install omf nvm
RUN omf install nvm

ENTRYPOINT ["fish"]
