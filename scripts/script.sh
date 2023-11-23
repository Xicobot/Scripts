#!/bin/bash
#Script Basico.

#Este script genera un archivo informe que nos dice los usuarios conectados y el día
echo "Fecha: $(date +%d-%m-%Y)" > informe.txt
echo "los usuarios conectados son" >> informe.txt
who >> informe.txt


