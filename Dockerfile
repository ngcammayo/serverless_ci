FROM atlassian/default-image:4
LABEL maintainer="Bert Cammayo <ngcammayo@gmail.com>"

RUN apt-get update \
  && apt-get install -y --no-install-recommends build-essential \
  && apt-get clean \
  && python3 -m pip install --user pipx \
  && python3 -m pipx ensurepath \
  && pipx install poetry \
  && export PATH="/root/.local/bin:$PATH" \
  && npm install -g serverless
