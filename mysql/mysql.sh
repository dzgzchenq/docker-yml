docker run --name some-mysql -v "$PWD"/mysql:/var/lib/mysql -v /etc/localtime:/etc/localtime:ro -e MYSQL_ROOT_PASSWORD=123456 -d -p 3306:3306 mysql:5.7.20 --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci

docker run -it --rm mysql:5.7.20 mysql -h182.61.9.160 -P3306 -uroot -p123456
docker run -it --link some-mysql:mysql --rm mysql:5.7.20 sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'

docker inspect -f {{.Mounts}} some-mysql
