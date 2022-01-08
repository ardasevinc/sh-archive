#!/bin/bash

filename="$1"
bssid="$2"

readarray auth < "$filename"

# Connect to spesific BSSID
nmcli device wifi connect name "Uniyurt" bssid $bssid

curl -X POST -F "auth_user=${auth[0]}" -F "auth_pass=${auth[1]}" -F "accept='Giriş Yap'" "http://172.16.0.1:8002/index.php?zone=uniyurtcp" > /dev/null

if [[ -f temp && ! -s temp ]]
then
    echo "-----"
    echo "AUTHENTICATION SUCCESSFUL"
    echo "-----"
else
    echo "-----"
    echo "AUTH FAIL"
    echo "-----"
fi

exit 0
