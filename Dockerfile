FROM node:14.16.0

LABEL author="mikamboo <mike@mikangali.com>"

ENV FIREBASE_TOOL_VERSION 9.16.0

RUN (curl -Ls https://cli.doppler.com/install.sh || wget -qO- https://cli.doppler.com/install.sh) | sh

RUN yarn global add firebase-tools@${FIREBASE_TOOL_VERSION} 

WORKDIR "/app"
