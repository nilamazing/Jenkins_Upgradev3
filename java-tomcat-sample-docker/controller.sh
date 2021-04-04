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
 echo "Container does not exist..Creating Container"
fi
 docker run -p 7070:8080 -d --name tomcatsamplecntnr tomcatsamplewebapp:49
 echo "Container Created"
