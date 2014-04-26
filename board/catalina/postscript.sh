#!/bin/sh
TARGET="${1}"

mkdir -p $TARGET/opt/catalina
mkdir -p $TARGET/var/www

rsync -rv /home/ghetzel/src/github/ghetzel/catalina/ $TARGET/opt/catalina/
rsync -rv /home/ghetzel/src/github/ghetzel/onering-ratchet-dev/ $TARGET/var/www/
