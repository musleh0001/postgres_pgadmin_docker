#/bin/bash

docker exec -i db psql -U postgres -d postgres < data/users.sql

if [ $? -eq 0 ]; then
    echo "Data load successfully"
else
    echo "Error! Something went wrong."
fi