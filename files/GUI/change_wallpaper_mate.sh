#!/bin/bash

#---------------------------------------#
#
# script para cambiar Imagen de fondo de mate 
# cada $Time segundos 
#
# (by upszot)
#---------------------------------------#

#-------- Vars ------#
PATH_IMAGES="${HOME}/Imágenes/wallpaper"
TIME=2
#--------------------#
#PATH_IMAGES=$1
#TIME=$2

#Devuelve IMG con el nombre completo de la imagen actual
function get_img(){
	IMG=gsettings get org.mate.background picture-filename
}

#Setea imagen de fodo en desktop Mate
function change(){
  	gsettings set org.mate.background picture-filename $IMG
}

#Obtengo Nombre completo de imagen random de un dir
function Random_img(){
	IMG=$(find ${PATH_IMAGES}/ -name *.jpg -type f |shuf -n1)
}

#------------- main -------#
while true;do
	Random_img
	change
	sleep $TIME
done