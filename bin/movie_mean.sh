#!/bin/bash


$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.8.0.jar \
    -input /data/netflix_data/training_set/mv_$1.txt \
    -mapper mapreduce_jobs/map_review.py \
    -reducer mapreduce_jobs/red_mean.py \
    -output /output/movie_$1/

