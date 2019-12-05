FROM node:10.17.0

LABEL author="mikamboo <mike@mikangali.com>"

ENV FIREBASE_TOOL_VERSION 7.9.0 \
    FIREBASE_ADMIN_VERSION 8.8.0

# Instal npm packages

RUN yarn global firebase-tools@${FIREBASE_TOOL_VERSION} firebase-admin@${FIREBASE_ADMIN_VERSION}

WORKDIR "/app"
