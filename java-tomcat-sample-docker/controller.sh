#! /bin/bash

cntnrOutPut=$(docker inspect tomcatsamplecntnr | grep Id | cut -d ':' -f 2 | cut -d ',' -f 1)

echo "Listing Container ID  & Length string"
echo $cntnrOutPut

if [[ ${#cntnrOutPut} -gt 0 ]]
then
 echo "Container Id: $cntnrOutPut exists"
 echo "Removing Container"
 docker rm -f tomcatsamplecntnr
 echo "Container removed"
else
 echo "Container does not exist"
fi
 echo "Removing target docker images"
 docker rmi $(docker images tomcatsamplewebapp -q)
 echo "Target Docker Images removed"
 echo "Building Docker image"
 docker build -t tomcatsamplewebapp:$1 .
 docker run -p 7070:8080 -d --name tomcatsamplecntnr tomcatsamplewebapp:$1
 echo "Container Created"
