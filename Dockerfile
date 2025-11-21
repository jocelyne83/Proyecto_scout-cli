FROM alpine:3.20

RUN apk add --no-cache bash curl tar

WORKDIR /app

COPY install.sh .
COPY dist/*.tar.gz dist/
COPY docs/*.yaml docs/

COPY LICENSE .
COPY README.md .
COPY reporte2-sbom.json .
COPY reporte.md .
COPY Test_pipeline.sh .

RUN chmod +x install.sh


ENTRYPOINT ["./install.sh"]
