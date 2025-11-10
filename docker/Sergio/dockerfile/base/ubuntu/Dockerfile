# partimos de una imagen base de ubuntu
FROM ubuntu
RUN apt update && apt install -yq --no-install-recommends \
    apache2 \
    curl \
    nano \
    net-tools iputils-ping

# mantener vivo el contenedor
# tail es un comando que nunca acaba su ejecucion
CMD [ "tail", "-f", "/dev/null" ]