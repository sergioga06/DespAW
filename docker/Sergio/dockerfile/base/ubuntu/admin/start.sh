#!/bin/bash

newUser(){
    useradd -rm -d /home/sergio -s /bin/bash sergio
    echo "sergio:1234" | chpasswd
    echo "Bienvenido Sergio ..." > /home/sergio/bienvenida.txt
}
main(){
    newUser
    tail -f /dev/null
}

main
