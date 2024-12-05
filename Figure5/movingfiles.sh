# This script will move and rename the outputfiles from OSR
$ module load gcc
cd Summary_results_landraces_Figure10_v5

for a in BF CCS Dia Synthetic Reference
do
	for b in PI608619e PI516002e PI571439e PI571523e  PI571629e PI571913e PI571994e PI471823e 
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
						cp ../"$a"_"$b"_"$c"_"$d"_"$e"/"$f"/tabled_output.tab ./"$a"_"$b"_LNLP_"$d"_"$e".tab
					done
				done
			done
		done
	done
done


