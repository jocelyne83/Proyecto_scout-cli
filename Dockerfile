FROM alpine:3.20

RUN apk add --no-cache bash curl tar

WORKDIR /app

# Copiar script principal
COPY install.sh .

# Copiar dist solo el archivo comprimido
COPY dist/*.tar.gz dist/

# Copiar docs solo los yaml
COPY docs/*.yaml docs/

# Permisos
RUN chmod +x install.sh

ENTRYPOINT ["./install.sh"]
