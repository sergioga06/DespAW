# partimos de una imagen base de ubuntu
FROM ubuntu
RUN apt update && apt install -yq --no-install-recommends \
    apache2 \
    curl \
    nano \
    net-tools iputils-ping

# delegar la respondabilidad de la configuracion de las imagenes 
# a los scrpts llamados Entrypoint (scripts de inicio para un contenedor)
# mantener vivo el contenedor
# tail es un comando que nunca acaba su ejecucion

# CMD [ "tail", "-f", "/dev/null" ]
# copiar los entrypoinit (admin) dentro del contenedor en /root /bin/admin

RUN mkdir -p /root/base/ubuntu/admin
#directorio actual dentro del contenedor
WORKDIR /root/base/ubuntu/admin
COPY ./dockerfile/base/ubuntu/admin/ .
RUN chmod o+x ./start.sh

# script de arranque para crear la iso y ejecutar el contenedor
ENTRYPOINT [ "./start.sh" ]