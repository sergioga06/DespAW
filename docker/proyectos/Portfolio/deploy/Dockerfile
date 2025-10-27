# partimos de una imagen base de ubuntu
FROM ubuntu
RUN apt update && apt install -yq --no-install-recommends \
    apache2 \
    curl \
    nano \
    net-tools iputils-ping

RUN useradd -rm -d /home/sergio -s /bin/bash sergio
# para crear el password usamos el comando chpasswd
RUN echo "sergio:1234" | chpasswd

# activamos el puerto 80 de apache
EXPOSE 80
# ejecutamos apache en primer plano cuando se inicie el contenedor
CMD apachectl -DFOREGROUND