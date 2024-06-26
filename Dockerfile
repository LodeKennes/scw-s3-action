FROM python:3.11-alpine

ENV AWSCLI_VERSION='1.32.69'

RUN python3 -m pip --no-cache-dir install awscli==1.32.69
RUN python3 -m pip --no-cache-dir install awscli_plugin_endpoint

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD [ "help" ]
