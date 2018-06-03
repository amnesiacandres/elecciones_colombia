# Open Data - Elecciones Presidenciales Colombia 2018

La transparencia es un reto para la democracia. Los procesos electorales a gran escala son complejos y generan grandes cantidades de datos. 

En el pasado los ciudadanos participabamos en elecciones y esperabamos escuchar los conteos totales en los medios, sin tener mecanismos para revisar los datos a detalle. Entre las razones para no poder hacerlo se encuentran la falta de transparencia de los gobiernos, el no contar con la tecnologia para almacenar y distribuir grandes volumenes de informacion, y no tener herramientas de analisis adecuadas para trabajar a gran escala.

Actualmente, ante una mayor participacion ciudadana, la mayoria de los gobiernos hacen publicos los documentos electorales (no siempre de una manera muy accessible para los ciudadanos). De manera paralela, el accesso a Internet de alta velocidad se ha propagado por todo el planeta; y se han desarrollado herramientas para procesar y analizar datos a gran escala (texto, imagenes, numeros, video, etc...).

En este entorno, este proyecto busca facilitar el acceso a los datos generados en las elecciones presidenciales en Colombia (2018).

Actualmente este repositorio contiene: 
- Una lista de URLs para descargar cada uno de los archivos PDF de las Actas de Escrutinio de las elecciones Presidenciales de Colombia de 2018 (Imagenes). La totalidad de los archivos una vez descargados es de ~3.5GB. Tambien se incluye una herramienta para descargar los archivos (ver instrucciones abajo)
- Los datos publicados de los conteos (a Junio 1, 2018) a nivel municipal. Archivos en formato JSON
- Los datos crudos utilizados para generar la lista de URLs a los PDFs.


Para mas informacion acerca del objetivo de descargar estas imagenes visita el [Observatorio Fiscal](https://www.ofiscal.org/machine-learning-defend-democracy) de la Universidad Javeriana.


## Instrucciones para descargar las imagenes de las Actas de Escrutinio

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
 
