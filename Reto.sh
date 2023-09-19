#! /bin/bash

#Crear carpetas
mkdir -p ./Taller_Clase_3/Archivos/Textos_planos
mkdir -p ./Taller_Clase_3/Archivos/pdf
mkdir -p ./Taller_clase_3/Mover_Imagen1_aqui

#Descargar y mover imagen
cd ./Taller_Clase_3
url=https://www.collinsdictionary.com/images/full/river_377603497_1000.jpg
curl -o Imagen1.jpg $url
mv Imagen1.jpg ./Mover_Imagen1_aqui


#crear textos planos
cd ./Archivos/Textos_planos
Touch Texto_plano1.txt
Touch Texto_plano2.txt
Echo "Hola Texto_plano1"> Texto_plano1.txt
Echo "Profe no me repruebe"> Texto_plano2.txt

#descargar PDF
cd ..
cd ./pdf
url_pdf=https://oit.ua.edu/wp-content/uploads/2020/12/Linux_bash_cheat_sheet-1.pdf
curl -o explicacion.pdf $url_pdf

#crear historial
cd ..
cd ..
cat "$HOME/.bash_history" > historial.txt

#crear tree
tree > tree.txt

#eliminar todo

cd ..
echo "borrar todo?"
read input

if [ $input == "Y" ];
then
    rm -r ./Taller_Clase_3
fi