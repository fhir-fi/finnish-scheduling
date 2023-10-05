FROM node:lts-bullseye
RUN npm install -g fsh-sushi@3.3.3

RUN apt-get update && apt-get -y install openjdk-17-jdk-headless ruby-full build-essential zlib1g-dev
RUN gem install jekyll bundler 
