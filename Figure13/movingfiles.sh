# This script will move and rename the outputfiles from OSR
$ module load gcc
cd Summary_results_Figure13_v3

for a in 1 2 3 4
do
	for b in Drought Nitrogen-Stress Phosphorus-Stress
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
						cp ../"$a"_"$b"_"$c"_"$d"_"$e"/"$f"/tabled_output.tab ./"$a"_"$b"_"$c"_"$d"_"$e".tab
					done
				done
			done
		done
	done
done


