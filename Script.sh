#!/bin/bash

echo "Criando os diretórios..."

mkdir publico adm ven sec

echo "Criando os grupos...."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando os usuários e setando em seus devidos grupos..."

useradd carlos -c "Carlos Eduardo" -s /bin/bash -m -p $(openssl passwd carlos123) -G GRP_ADM 
passwd carlos -e
useradd maria -c "Maria Silva" -s /bin/bash -m -p $(openssl passwd maria123) -G GRP_ADM 
passwd maria -e
useradd joao -c "João Eduardo" -s /bin/bash -m -p $(openssl passwd joao123) -G GRP_ADM 
passwd joao -e

useradd debora -c "Debora Silva" -s /bin/bash -m -p $(openssl passwd debora123) -G GRP_VEN
passwd debora -e
useradd sebastiana -c "Sebastiana Silva" -s /bin/bash -m -p $(openssl passwd sebastiana123) -G GRP_VEN
passwd sebastiana -e
useradd roberto -c "Roberto Silva" -s /bin/bash -m -p $(openssl passwd roberto123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina Silva" -s /bin/bash -m -p $(openssl passwd josefina123) -G GRP_SEC
passwd josefina -e
useradd amanda -c "amanda Silva" -s /bin/bash -m -p $(openssl passwd amanda123) -G GRP_SEC
passwd amanda -e
useradd rogerio -c "rogerio Eduardo" -s /bin/bash -m -p $(openssl passwd rogerio123) -G GRP_SEC
passwd rogerio -e

echo "Setando as permissões no diretório publico..."

chmod 777 /publico

echo "setando dono e grupos dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "setando permissões dos diretórios..."

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec




