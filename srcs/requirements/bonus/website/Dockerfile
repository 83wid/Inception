FROM debian:buster

ARG GITHUB_TOKEN

RUN apt update && apt upgrade -y && apt install -y \
    curl \
    git

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | sh
# COPY ./tools/setup.sh /tmp
RUN apt update && apt install -y nodejs
RUN git clone https://${GITHUB_TOKEN}@github.com/83wid/Portfolio -b three /app
WORKDIR /app
RUN npm install
CMD [ "npm", "start" ]