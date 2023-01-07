
# docker pull wordpress:5
# docker pull mariadb:10.8.2
# docker pull nginx:alpine


docker run -d --rm \
    --env MARIADB_DATABASE=db \
    --env MARIADB_USER=wp \
    --env MARIADB_PASSWORD=123 \
    --env MARIADB_ROOT_PASSWORD=123 \
    mariadb:10.8.2

# docker exec -it 9ac mysql -u wp -p


docker run -d --rm \
    --env WORDPRESS_DB_HOST=172.17.0.2 \
    --env WORDPRESS_DB_USER=wp \
    --env WORDPRESS_DB_PASSWORD=123 \
    --env WORDPRESS_DB_NAME=db \
    wordpress:5


docker run -d --rm \
    -p 80:80 \
    -v `pwd`/wp.conf:/etc/nginx/conf.d/default.conf \
    nginx:alpine