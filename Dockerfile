FROM ghcr.io/static-web-server/static-web-server:2 as sws

FROM scratch

EXPOSE 80

STOPSIGNAL SIGQUIT

ENTRYPOINT ["/static-web-server"]

COPY --from=sws /static-web-server /

COPY public /public
