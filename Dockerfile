FROM node:lts-slim

LABEL "name"="firebase"
LABEL "version"="1.0.7"
LABEL "maintainer"="Jonah Snider <jonah@jonah.pw> (jonah.pw)"

LABEL "com.github.actions.name"="Firebase GitHub Action"
LABEL "com.github.actions.description"="Wraps the Firebase CLI to enable common commands."
LABEL "com.github.actions.icon"="globe"
LABEL "com.github.actions.color"="orange"

LABEL "repository"="https://github.com/jonahsnider/firebase-action"
LABEL "homepage"="https://github.com/jonahsnider/firebase-action"

COPY license.md readme.md /
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN npm i -g firebase-tools
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
