FROM python:3.7-alpine
COPY mvnfeed-cli /var/tmp/mvnfeed-cli
USER root
WORKDIR /var/tmp/mvnfeed-cli
RUN python scripts/dev_setup.py
RUN pip install requests
