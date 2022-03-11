# Using Docker for Laravel App
`Nginx & debian linux & php7.4-fpm & nodejs & composer & supervisord & mysql5.7`

## How to work
```
1 - clone from github
  root project: example name: vii
  vii/
    docker/ -> clone from: git clone https://github.com/vii9/ngx-docker.git .
    maincode/ -> create project: composer create-project laravel/laravel .

  cd in current folder project
    $ mkdir docker && cd docker
    $ git clone ...
2 - config
  docker/.env file
    - change (a) => name folder working directory
    - (b) => mysql config database name and pass root
  
  docker/docker-compose.yml file
    - change (c) => folder working directory where contains all code your project

  docker/ngxfpm/default.conf file
    - (d) => change to where contains index.php file
    - (e) => change it and add in file hosts
3 - start
  $ cd docker
  $ ./up.sh
4 - end
  $ cd docker
  $ ./down.sh
5 - mysql tools connection: Workbench, HeidiSQL...
  open port _:33666  
6 - config in laravel app
  maincode/.env
      DB_CONNECTION=mysql
      ## note: DB_HOST is name container mysql
      DB_HOST=s3f_mysql57_con
      DB_PORT=3306
      DB_DATABASE=dbs3f
      DB_USERNAME=root
      DB_PASSWORD=password
7 - working in docker container nginx
      # attach to container nginx
      $ docker exec -it s3f_app_con bash
      # check ip address 
      $ docker inspect s3f_mysql57_con |grep "IPAddress"
      
      # go to working project folder at (d) 
      $ cd /usr/share/nginx/html/public
        at here : you can using artisan, composer, npm command
8 - goto browsers : (e) dev-s3gold.io
```
9 - install nodejs
apt install curl

curl -sL https://deb.nodesource.com/setup_16.14 -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install nodejs

chmod -R 777 bootstrap/cache
chmod -R 777 storage

docker exec -u -0 -it s3f_app_con bash