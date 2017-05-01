#!/bin/bash

if [[ $# == 1 ]] 
    then
    start_year=$1
    final_year=2017
elif [[ $# == 2 && $1 < $2 ]] 
    then
    start_year=$1
    final_year=$2
else
    start_year=2000
    final_year=2017
fi

while [[ $start_year -le $final_year ]]
do
    echo $start_year
    $HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.8.0.jar \
    -cmdenv PARAM_OPT=$start_year \
    -input /data/netflix_data/movie_titles.txt \
    -mapper mapreduce_jobs/map_movie_year.py \
    -reducer mapreduce_jobs/red_count.py \
    -output /output/movie_year_$start_year

    start_year=$[$start_year+1]
done

