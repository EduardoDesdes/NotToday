#Resolviendo la llave
openssl rsautl -decrypt -inkey ./clave.pem -in enviame.enc > key.txt