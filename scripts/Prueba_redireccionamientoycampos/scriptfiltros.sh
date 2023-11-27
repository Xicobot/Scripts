#!/bin/bash

##"Dado 3 ficheros(Hospital, medico, paciente), Hay que extraer toda la informacion de los pacientes ordenados por apellidos"

cat paciente.txt | sort -t: -k1 > pacientesordenados.txt
join -t: -11 -23 medico.txt hospital.txt > hospitalmedico.txt
join -t: -15 -21 hospitalmedico.txt pacientesordenados.txt > finalhospital.txt
cat finalhospital.txt | awk -F: '{print $5 ":" $3 ":" $9}' | sort -t: -k3 > final2.txt 
