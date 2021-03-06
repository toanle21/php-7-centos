sudo yum install -y libmemcached-devel

git clone https://github.com/php-memcached-dev/php-memcached
cd php-memcached
git checkout -b php7 origin/php7

/usr/local/php7/bin/phpize
./configure --with-php-config=/usr/local/php7/bin/php-config
make
sudo make install

echo "

# Memcached
extension=memcached.so" >> /usr/local/php7/etc/conf.d/modules.ini
