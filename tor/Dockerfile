FROM alpine:latest
RUN apk add --no-cache tor
COPY torrc /etc/tor/torrc
EXPOSE 9050 9040
CMD ["tor", "-f", "/etc/tor/torrc"]
