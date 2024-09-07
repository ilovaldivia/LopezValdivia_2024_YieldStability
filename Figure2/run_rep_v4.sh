for a in ROS NF
do
	for b in High Low
	do
		for c in PI608619 PI516002 PI571439 PI571523 PI571629 PI571913 PI571994 PI471823 # PI571550 PI571986
		do
			for d in HN LN
			do
				for e in 0
				do
					for f in rep1 #rep2 rep3 rep4 #rep5 
					do
						echo "$a"_"$b"_"$c"_"$d"_"$e"/"$f"/
						cd "$a"_"$b"_"$c"_"$d"_"$e"/"$f"/
						qsub -A open ../../../job_master.pbs
						echo "Trabajo enviado"
						cd ../..
					done
				done
			done
		done
	done
done

