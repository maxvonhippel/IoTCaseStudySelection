#!/bin/bash
codepath=../IoTBench-test-suite/smartThings/smartThings-Soteria/smartThings-Soteria-third-party/
START=$(date +%s)
echo "iteration, time" > time.csv
for ((i=2;i<=5;i++)) do
	/usr/bin/python3.6 dataset.py $i $codepath > "result"$i".txt"
	END=$(date +%s)
	DIFF=$(( $END - $START ))
	echo "$i, $DIFF" >> time.csv
	echo "Loop $i done in $DIFF seconds."
	START=$(date +%s)
done