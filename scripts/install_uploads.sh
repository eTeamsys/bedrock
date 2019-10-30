# !/bin/bash

echo "$(pwd)/web/app/uploads"

 ln -s /media/efs $(pwd)/web/app/uploads
chown -R www-data:www-data $(pwd)/web/app/uploads
chmod -R 775  $(pwd)/web/app/uploads
