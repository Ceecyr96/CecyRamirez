#!/bin/bash

echo "Ejecutando pruebas en entorno de liberación..."

docker exec -it $(docker ps -q -f "name=app") pytest /app/tests/

if [ $? -eq 0 ]; then
  echo "Pruebas completadas con éxito."
else
  echo "Pruebas fallidas. Revisar logs."
fi
