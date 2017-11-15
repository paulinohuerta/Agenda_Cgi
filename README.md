# Agenda_Cgi
Una Agenda básica con CGI, la cual almacena los datos en un fichero agenda.txt

# Instalación
Debes de proceder a descargarlo.
Tienes que tener instalado Apache y copiarlo en la carpeta /usr/lib/cgi-bin

# Funcionamiento
Para acceder a el tendras que ir a tu navegador y acceder a:
"http://localhost/cgi-bin/Agenda.pl"

Te aparecera un pequeño formulario que contiene: Nombre, Apellido, Telefono, Movil y Direccion.
Si lo rellenas y le das a enviar te reenviara a la página donde se muestra la información que has introducido.
Al volver al formulario, aparecera debajo de este, tu agenda, es decir, los datos que contiene agenda.txt

# A tener en cuenta
Debemos de tener el cuenta que el fichero esta alojado en /tmp, una carpeta donde puedes guardar ficheros temporalmente, es decir, cuando apagues el ordenador, el archivo ya no estará.

Si deseas hacerlo completamente permanente, tendras que crear previamente un fichero con permiso de escritura para todos los usuarios.

