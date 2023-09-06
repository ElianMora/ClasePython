#! /bin/bash

echo "introduse tu nombre"
read name
echo "Hola" $name
mkdir ~/desktop/$name
cd ~/desktop/
echo "hola $name">~/Desktop/$name/hola.txt
start ~/desktop/$name/