for a in PI608619 PI571994 PI571913  # (1)  PI608619 PI571994 PI571913 (2) PI571439 PI571523 PI571629 (3) PI471823 PI516002
do
	for b in PI608619e PI516002e PI571439e PI571523e  PI571629e PI571913e PI571994e PI471823e 
	do
		for c in Synthetic # PI571550 PI571986
		do
			for d in 0
			do
				for e in 0
				do
					for f in rep1 #rep2 rep3 rep4 #rep5 
					do
						echo "$a"_"$b"_"$c"_"$d"_"$e"/"$f"/
						cd "$a"_"$b"_"$c"_"$d"_"$e"/"$f"/
						sbatch -N 1 -n 1 --mem=32GB -t 48:00:00 -p open --wrap "../../../../OSR_v2/OpenSimRoot/StaticBuild/OpenSimRoot ../runMaize.xml"
						echo "Trabajo enviado"
						cd ../..
					done
				done
			done
		done
	done
done

