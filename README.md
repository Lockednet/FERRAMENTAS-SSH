# FERRAMENTAS SSH

## ATUALIZAR E LIMPAR SISTEMA
```sh
sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt autoremove && sudo apt autoclean
```

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
wget https://github.com/Lockednet/FERRAMENTAS-SSH/raw/main/senharoot.sh && chmod 777 senharoot.sh && ./senharoot.sh
```

## CRIAR SWAP 2 GIGAS 
```sh
bash <(wget -qO- https://github.com/Lockednet/FERRAMENTAS-SSH/raw/main/swap)
```

## HABILITAR ROOT NA ORACLE
```sh
wget -O /etc/ssh/sshd_config https://raw.githubusercontent.com/Lockednet/FERRAMENTAS-SSG/main/sshd_config > /dev/null 2>&1
```
```sh
service ssh restart
```

## RESTAURAR APT 
```sh
wget https://github.com/Lockednet/FERRAMENTAS-SSH/raw/main/apt.sh && chmod 777 apt.sh && ./apt.sh
```
