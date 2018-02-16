# Firebase deploy image

[![Docker build](https://img.shields.io/docker/automated/mikangali/firebase.svg)](https://hub.docker.com/r/mikangali/firebase)


Web js ci-deploy image with nodejs and some npm packages :

* firebase-tools
* ionic
* cordova
* hexo-cli

## Sample usage for gitlab ci

```yml
image: mikangali/firebase

variables:
  PROJ_STAGING : "staging-project"
  PROJ_PRODUCTION : "prod-prejct"

deploy to staging:
  environment: staging
  script:
    - firebase use $PROJ_STAGING --token "$FIREBASE_TOKEN"
    - firebase deploy --token "$FIREBASE_TOKEN"
  only:
  - master

deploy to production:
  environment: production
  script:
    - firebase use $PROJ_PRODUCTION --token "$FIREBASE_TOKEN"
    - firebase deploy --token "$FIREBASE_TOKEN"
  only:
  - production
```
