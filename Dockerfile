FROM alpine:3.20

RUN apk add --no-cache bash curl tar

WORKDIR /app

COPY install.sh .

RUN chmod +x install.sh

ENTRYPOINT ["./install.sh"]
