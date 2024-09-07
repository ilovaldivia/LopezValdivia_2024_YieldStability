# This script will move and rename the outputfiles from OSR
$ module load gcc
cd Summary_results_landraces_v9

for a in ROS NF
do
	for b in High Low
	do
		for c in PI608619 PI516002 PI571439 PI571523 PI571629 PI571913 PI571994 PI471823
		do
			for d in WW WS
			do
				for e in 0
				do
					for f in rep1 #rep2 rep3 rep4 #rep5 
					do
						echo "$a"_"$b"_"$c"_"$d"_"$e".tab
						cp ../"$a"_"$b"_"$c"_"$d"_"$e"/"$f"/tabled_output.tab ./"$a"_"$b"_"$c"_"$d"_"$e".tab
					done
				done
			done
		done
	done
done


