FROM alpine:3.18

RUN apk add --no-cache postgresql15-client bash

ARG PUID=1000
ARG PGID=1000

COPY dbinit.sh /psql/dbinit.sh

RUN addgroup -g "${PGID}" psql && \
    adduser -u "${PUID}" -G psql -h /psql -D psql \
    && chmod +x /psql/dbinit.sh

WORKDIR /psql

USER psql

ENTRYPOINT ["bash", "-c", "/psql/dbinit.sh"]
