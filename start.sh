mkdir -p {data,logs,conf}
cp my.cnf conf/my.cnf
docker pull mysql:5.6
docker run -p 3306:3306 --name mysql -v $PWD/conf/my.cnf:/etc/mysql/my.cnf -v $PWD/logs:/logs -v $PWD/data:/mysql_data -e MYSQL_ROOT_PASSWORD=root -d mysql:5.6