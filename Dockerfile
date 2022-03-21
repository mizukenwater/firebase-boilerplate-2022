# Firebase EmulatorはJavaを必要とするため、ベースイメージはこれを使う
FROM openjdk:11

# Node.jsのインストール、現在Cloud FUnctionsではNode16系を採用している
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -&& \
  apt -y install nodejs

# Yarnのインストール
RUN set -x && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo 'deb http://dl.yarnpkg.com/debian/ stable main' > /etc/apt/sources.list.d/yarn.list
RUN set -x && apt-get update -qq && \
  apt-get install -yq build-essential yarn

WORKDIR /usr/app

RUN yarn global add firebase-tools