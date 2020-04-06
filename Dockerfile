FROM alpine:3.11
RUN apk add python3 git
ENTRYPOINT ["run.sh"]
