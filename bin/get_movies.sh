#!/bin/bash

$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.8.0.jar \
    -input /data/netflix_data/movie_titles.txt \
    -mapper mapreduce_jobs/map_movie_titles.py \
    -output /output/movie_titles

