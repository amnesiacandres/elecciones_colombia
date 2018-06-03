#PDF Downloader

Este repositorio contiene una lista con el URL para descargar cada uno de los archivos PDF de las Actas de Escrutinio de las elecciones Presidenciales de Colombia. 

Para mas informacion acerca del objetivo de descargar estas imagenes visita [este enlace](https://www.ofiscal.org/machine-learning-defend-democracy).


## Instrucciones

Descarga o clona este repositorio.


Para bajar todos los archivos en el mismo directorio:
```bash
cat lista_todos_pdf.txt | xargs -P 100 -n 6 -I{} wget -nc {}
```



Para descargar los archivos siguiendo una estructura ../pdfs/departamento/municipio/archivo.pdf ejecuta el siguiente comando (linux / mac):
```bash
cat lista_todos_pdfs.txt | xargs -P 100 -n 6 -I{} ./download_pdf.sh {}
```

Ajusta el parametro ```-n 6``` al numero de threads que quieras utilizar (en este caso 6 threads para un procesador de 4 cores / 8 threads, dejando 1 core disponible para otras tareas).


En Windows puedes utilizar Cygwin u otra herramienta a la que le puedas dar la lista de URLs a descargar.
 
