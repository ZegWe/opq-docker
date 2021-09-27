FROM alpine:latest

ARG TARGETPLATFORM
COPY getopq.sh .
RUN sh getopq.sh $TARGETPLATFORM

FROM alpine:latest

COPY --from=0 /OPQBot/ /home/OPQBot
RUN apk add --no-cache wget
WORKDIR /home/OPQBot
COPY entrypoint.sh .
CMD sh /home/OPQBot/entrypoint.sh $GITTER_TOKEN
