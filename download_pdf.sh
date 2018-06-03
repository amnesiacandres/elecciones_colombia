#! /bin/bash

#this script downloads the file from URL in parameter 1 ($1)
#and creates a directory structure required  ../pdfs/<DEPARTAMENTO>/<MUNICIPIO>/<ARCHIVO.PDF>
#according to the filename



#create pdfs base dir
if [ ! -d "pdfs" ]; then mkdir "pdfs"; fi 

#check if directory structure exists
if [ ! -d $(echo $1 | awk -F/ '{print "pdfs/"$5}') ]; then mkdir $(echo $1 | awk -F/ '{print "pdfs/"$5}'); fi 
if [ ! -d $(echo $1 | awk -F/ '{print "pdfs/"$5"/"$6}') ]; then mkdir $(echo $1 | awk -F/ '{print "pdfs/"$5"/"$6}'); fi 

#download file if it doesnt exist.
if [ ! -f $(echo $1 | awk -F/ '{print "pdfs/"$5"/"$6"/"$NF}') ]; then echo $1 | awk -F/ '{print "downloading: pdfs/"$5"/"$6"/"$NF}' & wget -qP $(echo $1 | awk -F/ '{print "pdfs/"$5"/"$6"/"}') $1; else echo $1 | awk -F/ '{print "File found: pdfs/"$5"/"$6"/"$NF}'; fi
