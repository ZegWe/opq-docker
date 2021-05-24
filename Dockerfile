FROM alpine:latest

RUN apk update \
	&& apk add curl tar
RUN curl -O https://files.gitter.im/5f27939ed73408ce4feb3112/jYSr/OPQBot_6.0.12_linux_amd64.tar.gz
RUN tar -xvf OPQBot_6.0.12_linux_amd64.tar.gz 

FROM alpine:latest

COPY --from=0 /OPQBot_6.0.12_linux_amd64/ /home/OPQBot
RUN apk update && apk add wget
WORKDIR /home/OPQBot
COPY entrypoint.sh .
CMD sh entrypoint.sh $GITTER_TOKEN
