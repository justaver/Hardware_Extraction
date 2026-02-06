#!/bin/bash
password="secret123"   # change to whatever password you want

ascii_art[0]="(>^_^)>"
ascii_art[1]="(╯°□°）╯︵ ┻━┻"
ascii_art[2]="(づ｡◕‿‿◕｡)づ"
ascii_art[3]="ʕ•ᴥ•ʔ"

read -s -p "Enter password: " userpass
echo
if [[ "$userpass" == "$password" ]]; then
    echo "hello world" > hello.txt
    echo "File created: hello.txt"
else
    index=$(( RANDOM % 4 ))
    echo -e "${ascii_art[$index]}"
fi
