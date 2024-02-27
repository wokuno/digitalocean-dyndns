FROM alpine
MAINTAINER William Okuno <will@plover.io>
RUN apk --no-cache add curl jq bash
COPY dyndns.sh /
USER nobody
ENTRYPOINT exec /dyndns.sh
