#! /bin/bash
echo 'Seleccione cuantos GB quiere agregar como SWAP:'
echo '1. 1GB'
echo '2. 2GB'
echo '3. Cancelar'

read SWAP
case $SWAP in
        1)
                sudo dd if=/dev/zero of=/var/swap bs=4096k count=256
                ;;
        2)
                sudo dd if=/dev/zero of=/var/swap bs=4096k count=512
                ;;
        3)
                exit 0
                ;;
        *)
                echo "Opcion invalida"
                exit 1
                ;;
esac

sudo chmod 600 /var/swap

sudo mkswap /var/swap

sudo swapon /var/swap

sudo swapon -s

sudo su - root -c 'echo "LABEL=SWAP     /var/swap   swap    sw  0 0" >> /etc/fstab'