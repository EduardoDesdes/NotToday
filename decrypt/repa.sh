#Actualizando la db
updatedb

#Buscar los archivos a desencriptar
#locate .ntd > /tmp/list.ntm

for FILE in `cat /tmp/list.ntm`
do
	#Recibiendo archivo
	#FILE="file.txt.ntd"
	FILE2=`echo $FILE | sed s/....$//g` 

	#Desencriptando
	openssl enc -aes-256-cbc -d -pass file:key.txt -in $FILE -out $FILE2
	rm $FILE
done
