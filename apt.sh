#!/bin/bash

echo "Verificando processos do apt..."
APT_PROCESS=$(ps aux | grep [a]pt | awk '{print $2}')

if [[ -z "$APT_PROCESS" ]]; then
    echo "Nenhum processo do apt encontrado."
else
    echo "Encerrando processos do apt..."
    for PID in $APT_PROCESS; do
        sudo kill -9 $PID && echo "Processo $PID encerrado."
    done
fi

echo "Removendo arquivos de bloqueio..."
sudo rm -f /var/lib/apt/lists/lock
sudo rm -f /var/lib/dpkg/lock-frontend
sudo rm -f /var/cache/apt/archives/lock

echo "Reconfigurando o gerenciador de pacotes..."
sudo dpkg --configure -a

echo "Atualizando e fazendo upgrade do sistema..."
sudo apt update -y && sudo apt upgrade -y

echo "Operação concluída!"
