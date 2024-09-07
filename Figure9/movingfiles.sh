# This script will move and rename the outputfiles from OSR
$ module load gcc
cd Summary_results_landraces_Figure9_v1

for a in PI571523 PI608619 PI516002 PI571439 PI571629 PI571913 PI571994 PI471823 # (1) PI571523 PI608619 PI516002 (2) PI571439 PI571629 PI571913 (3) PI571994 PI471823
do
	for b in PI608619e PI516002e PI571439e PI571523e PI571629e PI571913e PI571994e PI471823e
	do
		for c in Synthetic
		do
			for d in 0
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


