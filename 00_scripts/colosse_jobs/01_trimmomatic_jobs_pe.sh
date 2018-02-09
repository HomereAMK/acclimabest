#!/bin/bash

# launch scripts for Colosse
for file in $(ls 02_data/*.f*q.gz|perl -pe 's/_R[12].f(ast)?q.gz//')
do
	base=$(basename "$file")
	toEval="cat 00_scripts/01_trimmomatic_pe.sh | sed 's/__BASE__/$base/g'"; eval $toEval > 00_scripts/colosse_jobs/TRIM_$base.sh
done


#change jobs header

#Submit jobs
for i in $(ls 00_scripts/colosse_jobs/TRIM*sh); do msub $i; done

