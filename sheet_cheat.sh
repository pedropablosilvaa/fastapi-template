# build docker image
cd db && docker build -t pgrouting/pgrouting . && cd ..

# run docker container using docker image
docker run -p 5298:5298 pgrouting/pgrouting

#show all containers
docker ps -a

#remove container
docker rm asd

#show all containers
docker images

#remove image
docker image asd

#see list of ports listening
sudo netstat -tulpn | grep LISTEN

# enter into docker container
docker exec -it deep_chiloe_db_1 /bin/bash
docker exec -it deep_chiloe_web_py_1 /bin/bash

# enter to database when u are in docker container
psql -h localhost -U USER -d DATABASE_NAME

# sheet cheat sql in cmd
https://gist.github.com/Kartones/dd3ff5ec5ea238d4c546

# stop/start postgres service 
systemctl stop postgresql

#restart database
docker-compose down
docker volume rm grafos-accesibilidad_stationdb_data

# get ip from docker container to connect to QGIS
# replace id container at the end of the line
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' 2118f53bf7c0
