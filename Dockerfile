FROM maven:3.6.0-jdk-8-alpine

LABEL version="1.0.0"
LABEL repository="http://github.com/bas/maven-github-action"
LABEL homepage="http://github.com/bas/maven-github-action"
LABEL maintainer="Bas Peters <bas@github.com>"

LABEL com.github.actions.name="GitHub Action for mmaven"
LABEL com.github.actions.description="Wraps the maven CLI to enable common mvn commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="red"

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
