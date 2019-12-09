# !/bin/bash

UPLOAD=$(pwd)/web/app/uploads

if [ ! -L "$UPLOAD" ]; then
    echo "create $UPLOAD symlink"
    ln -s -T /media/efs/ $UPLOAD
    chown -R www-data:www-data $UPLOAD
    chmod 775  $UPLOAD
else
    echo "$UPLOAD already exists"
fi

rm -Rf /var/cache/mod_pagespeed/* && php -r "opcache_reset();" && service php7.2-fpm reload && rm -Rf app/cache/cache-enabler/*