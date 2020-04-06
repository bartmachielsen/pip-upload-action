FROM alpine:3.11
RUN apk add python3 git
ADD run.sh run.sh
ENTRYPOINT ["run.sh"]
