# FERRAMENTAS SSH

## INSTALAR FIREWALL E ABRIR PORTAS AUTOMÁTICO
```sh
wget https://github.com/Lockednet/FERRAMENTAS-SSH/raw/main/oracle.sh && chmod 777 oracle.sh && ./oracle.sh
```

## INSTALAR MENU APACHE
```sh
apt install dos2unix -y; wget https://github.com/Lockednet/FERRAMENTAS-SSH/raw/main/menuapache && chmod +x menuapache && dos2unix menuapache && ./menuapache
```

## AUTERAR SENHA ROOT
```sh
bash <(wget -qO- https://github.com/Lockednet/FERRAMENTAS-SSH/raw/main/senharoot)
```
