#!/bin/bash
#ILV, 2022: This script will create new directories for OpenSimRoot inputfiles replacing values in .xml indicated in the code.
#The replacements are taken from a spreadsheet (OSR_parameterization.csv) that contains 3 header values (0,1,2) and the rest are the replacements values (3,...,n) 
set –e
set –u
set –o pipefail

 while IFS=',' read -a line || [ -n "$line" ]
do
   echo ${line[0]}_${line[1]}_${line[2]}_${line[3]}_${line[4]}
   cp -R ./Reference ./"${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"
   # Random number generator
   sed -i s/numeroRandom1/${line[7]}/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Angles
   sed -i s/angulo_seminales1/"${line[8]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/angulo_nodo1/"${line[9]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/angulo_nodo2/"${line[10]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/angulo_nodo3/"${line[11]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/angulo_nodo4/"${line[12]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/angulo_nodo5/"${line[13]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/angulo_nodo6/"${line[14]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/angulo_nodo7/"${line[15]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/angulo_nodo8/"${line[16]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Nodal Root Number
   sed -i s/seminales1/"${line[17]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/nodo1/"${line[18]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/nodo2/"${line[19]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/nodo3/"${line[20]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/nodo4/"${line[21]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/nodo5/"${line[22]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/nodo6/"${line[23]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/nodo7/"${line[24]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/nodo8/"${line[25]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Root diameter
   sed -i s/diametro1/"${line[26]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/diametro2/"${line[27]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/diametro3/"${line[28]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/diametro4/"${line[29]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/diametro5/"${line[30]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/diametro6/"${line[31]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/diametro7/"${line[32]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/diametro8/"${line[33]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Max Branching Frequency
   sed -i s/max_frecuencia_ramificacion1/"${line[34]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/max_frecuencia_ramificacion2/"${line[35]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/max_frecuencia_ramificacion3/"${line[36]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/max_frecuencia_ramificacion4/"${line[37]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/max_frecuencia_ramificacion5/"${line[38]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/max_frecuencia_ramificacion6/"${line[39]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/max_frecuencia_ramificacion7/"${line[40]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/max_frecuencia_ramificacion8/"${line[41]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Min Branching Frequency
   sed -i s/min_frecuencia_ramificacion1/"${line[42]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/min_frecuencia_ramificacion2/"${line[43]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/min_frecuencia_ramificacion3/"${line[44]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/min_frecuencia_ramificacion4/"${line[45]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/min_frecuencia_ramificacion5/"${line[46]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/min_frecuencia_ramificacion6/"${line[47]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/min_frecuencia_ramificacion7/"${line[48]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/min_frecuencia_ramificacion8/"${line[49]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Aerenchyma 
   sed -i s/aerenquima1/"${line[50]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Respiration 
   sed -i s/respiracion1/"${line[51]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml   
   # Optimum Nitrogen 
   sed -i s/Optimo_N/"${line[52]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Minimum Nitrogen 
   sed -i s/Minimo_N/"${line[53]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Seed weight
   sed -i s/semilla/"${line[54]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Density
   sed -i s/densidad1/"${line[55]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Axial penetration
   sed -i s/penetracionaxial1/"${line[56]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/penetracionaxial2/"${line[57]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Bulk density
   sed -i s/densidadaparente1/"${line[58]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # CO2
   sed -i s/dioxido1/"${line[59]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Temperature
   sed -i s/Temperatura1/"${line[60]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Precipitation pattern (riego1) and multiplier (riego2)
   sed -i s/riego1/"${line[61]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/riego2/"${line[62]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Nitrogen multiplier
   sed -i s/nitrogeno1/"${line[63]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Mineralization
   sed -i s/mineralizacion1/"${line[64]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Organic Matter Multiplier
   sed -i s/materia_organica1/"${line[65]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Month
   sed -i s/Mes1/"${line[66]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Altitude
   sed -i s/Altitud1/"${line[67]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Latitude
   sed -i s/Latitud1/"${line[68]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Relative Humidity
   sed -i s/HumedadRelativa1/"${line[69]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Wind Speed
   sed -i s/Viento1/"${line[70]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Temperature
   sed -i s/Temperatura2/"${line[71]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Hydraulic Parameters
   sed -i s/r11/"${line[72]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/s11/"${line[73]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/a11/"${line[74]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/n11/"${line[75]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/k11/"${line[76]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Organic Matter Real values
   sed -i s/materia_organica2/"${line[77]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Soil phosphorus multiplier
   sed -i s/fosforo_suelo1/"${line[78]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Soil phosphorus concentration (mM)
   sed -i s/fosforo_suelo2/"${line[79]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Optimun and Minimum P in tissue
   sed -i s/fosforo_maximo1/"${line[80]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   sed -i s/fosforo_minimo1/"${line[81]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   # Multiplier for diameter
   sed -i s/multiplicadordia1/"${line[82]}"/g "${line[0]}"_"${line[1]}"_"${line[2]}"_"${line[3]}"_"${line[4]}"/runMaize.xml
   

done < <(tail -n +2 OSR_parameterization_landraces_Figure14_v2.csv)


#for a in NF ROS
# do
#	for b in "PI 608619" "PI 516002" "PI 571439" "PI 571523" "PI 571629" "PI 571913" "PI 571994" "PI 471823"
#	do
#		for c in High Low
#		do
#			for d in HN LN
#			do
#				for e in rep1 rep2 rep3 rep4 rep5 
#				do
#				echo "$b"_"$a"_"$c"_"$d"_"$e"
#				cd "$b"_"$a"_"$c"_"$d"/"$e"
#				qsub -A open ../../../job.pbs
#				done
#			done
#		done
#	done
#done
