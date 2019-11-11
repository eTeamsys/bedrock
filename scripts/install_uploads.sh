# !/bin/bash

echo "$(pwd)/web/app/uploads"

 ln -s -T /media/efs/ $(pwd)/web/app/uploads/
chown -R www-data:www-data $(pwd)/web/app/uploads
chmod -R775  $(pwd)/web/app/uploads
