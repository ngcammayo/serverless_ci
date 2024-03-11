FROM atlassian/default-image:4
LABEL maintainer="Bert Cammayo <ngcammayo@gmail.com>"

RUN apt-get update \
  && apt-get install -y --no-install-recommends build-essential \
  && apt-get clean \
  && curl -sSL https://install.python-poetry.org | python3 - --version 1.8.2 \
  && export PATH="/root/.local/bin:$PATH" \
  && npm install -g serverless
