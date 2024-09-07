# This script will move and rename the outputfiles from OSR
$ module load gcc
cd Summary_results_landraces_v8_vtu

for a in 0
do
	for b in ROS NF
	do
		for c in High Low
		do
			for d in PI608619 PI516002 PI571439 PI571523 PI571629 PI571913 PI571994 PI471823
			do
				for e in WW WS
				do
					for f in rep1 #rep2 rep3 rep4 #rep5 
					do
						echo "$a"_"$b"_"$c"_"$d"_"$e".tab
						mv ../"$a"_"$b"_"$c"_"$d"_"$e"/"$f"/roots040.00.vtu ./roots_"$a"_"$b"_"$c"_"$d"_"$e".vtu
						mv ../"$a"_"$b"_"$c"_"$d"_"$e"/"$f"/fem040.0000.vtu ./soil_"$a"_"$b"_"$c"_"$d"_"$e".vtu
					done
				done
			done
		done
	done
done


