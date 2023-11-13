# Servidor web - terrafrom
#Todo el trabajo fue realizado en una maquina ubuntu 

+Primeros pasos:

Debes de tener instalados los siguientes programas en tu maquina para que todo funcione correctamnete: 

-Terraform
-Docker
-aws cli


+Para crear nuestra maquina EC2 en aws debemos tener un par de llaves las cuales le seran asignadas. 

Deberemos tener a mano las credenciales de nuestra cuenta de aws.

En nuestra carpeta home deberemos crear el directoro .aws donde iran los siguientes documentos "config" y "credentials". Su contenido puede ser copiado desde la consola de nuestro laboratorio de aws. 

Deberemos ejecutar un comando de aws cli que es "aws configure" donde debemos poner nuestra clave de acceso, clave secreta de acceso y la zona en la que nosotros estemos ubicados.

Teniendo los documentos en la carpeta .aws listos y haber ejecutado el comando aws configure, llenado los campos con la informacion correcta, ya podriamos tranquilamente ejecutar los siguientes comandos.

     "terraform init"

     "terraform plan"
Mostrara que se va a crear

     "terraform apply"
Empezara la construccion

     "terraform destroy"
Destruira lo que se halla creado. 


+Para crear nuestra imagen de docker haremos lo siguiente:

-Ejecutaremos el comando "docker build -t nombre_imagen:etiqueta .

-Para acceder al contenedor podemos usar el comando "docker rum -d -p 8080:80 nombre_imagen

