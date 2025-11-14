FROM alpine:3.20

# Instalar dependencias básicas (si tu script las necesita)
RUN apk add --no-cache bash curl tar

WORKDIR /app

# Copiar todo el proyecto al contenedor
COPY . .

# Dar permisos de ejecución al script principal
RUN chmod +x install.sh

# Ejecutar el script por defecto
ENTRYPOINT ["./install.sh"]
