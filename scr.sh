#!/bin/bash

echo "Criando Diretorios ..."

mkdir /admin
mkdir /ven
mkdir /sec
mkdir /publica

echo "Criando Grupo..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuarios ..."

useradd maria -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd joaoa -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd josa -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM

useradd felipe -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
useradd rodrigues -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
useradd ronaldo -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN

useradd marcos -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
useradd tiago -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
useradd davi -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC

echo "Permissões de Usuarios ..."

chown root:GRP_ADM /admin
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven

chmod 770 /admin
chmod 770 /sec
chmod 770 /ven
chmod 777 /publica

echo "Finalizando cadastramento ..."
