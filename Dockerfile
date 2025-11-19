FROM alpine:3.20

RUN apk add --no-cache bash curl tar

WORKDIR /app


COPY install.sh .


COPY dist/*.tar.gz dist/


COPY docs/*.yaml docs/


RUN chmod +x install.sh

ENTRYPOINT ["./install.sh"]
