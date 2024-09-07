for a in 2 4
do
	for b in Complete CCFN CCS
	do
		for c in Drought Nitrogen-Stress Phosphorus-Stress
		do
			for d in 0
			do
				for e in 0
				do
					for f in rep1 #rep2 rep3 rep4 #rep5 
					do
						echo "$a"_"$b"_"$c"_"$d"_"$e"/"$f"/
						cd "$a"_"$b"_"$c"_"$d"_"$e"/"$f"/
						sbatch -N 1 -n 1 --mem=32GB -t 24:00:00 -p open --wrap "../../../../OSR_v2/OpenSimRoot/StaticBuild/OpenSimRoot ../runMaize.xml"
						echo "Trabajo enviado"
						cd ../..
					done
				done
			done
		done
	done
done

