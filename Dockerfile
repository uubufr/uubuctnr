FROM alpine:latest

RUN addgroup -g 2001 clamav && adduser -u 2001 -G clamav -h /var/lib/clamav -D -s /sbin/nologin clamav

RUN apk --no-cache add clamav clamav-libunrar \
    && mkdir /run/clamav \
    && chown clamav:clamav /run/clamav \
    && chmod 0750 /run/clamav \
    && mkdir -p /var/lib/clamav/database \
    && chown -R clamav:clamav /var/lib/clamav \
    && chmod -R 0750 /var/lib/clamav

COPY config/ /etc/clamav/
RUN chown -R root:clamav /etc/clamav \
    && chmod 0550 /etc/clamav \
    && chmod 0440 /etc/clamav/clamd.conf

COPY entrypoint.sh /usr/bin/

EXPOSE 3310

RUN freshclam --quiet

ENTRYPOINT [ "entrypoint.sh" ]
