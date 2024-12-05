# This script will move and rename the outputfiles from OSR
$ module load gcc
cd Summary_results_landraces_Figure3_v1_vtu

for a in PI608619 PI516002 PI571439 PI571523 PI571629 PI571913 PI571994 PI471823
do
	for b in PI608619e PI516002e PI571439e PI571523e PI571629e PI571913e PI571994e PI471823e
	do
		for c in 0
		do
			for d in 0
			do
				for e in 0
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


