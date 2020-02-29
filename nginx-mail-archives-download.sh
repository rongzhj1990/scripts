#!/bin/bash

months=([1]=January February  March April  May  June  July  August  September  October  November December)

for year in {2007..2020}
do
    for i in {1..12}
    do
	month="${months[$i]}"

	n=$((year*100+i))
	if [ $n -lt 201108 ]; then
	    wget http://mailman.nginx.org/pipermail/nginx-devel/$year-$month.txt.gz
	else
	    wget http://mailman.nginx.org/pipermail/nginx-devel/$year-$month.txt
	fi
    done
done

