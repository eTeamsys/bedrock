# !/bin/bash

echo "$(pwd)/../uploads/"
echo "$(pwd)/web/app/uploads"

ln -s -T $(pwd)/../uploads/ $(pwd)/web/app/uploads/
chown -R www-data:www-data $(pwd)/web/app/uploads
chmod 775  $(pwd)/web/app/uploads
