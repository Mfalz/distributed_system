#!/bin/bash

### THIS SCRIPT RUNS MAP REDUCE JOBS

# remove old output files
$HADOOP_HOME/bin/hdfs dfs -rm -r /output

# exec hadoop streaming with given mappers and reducers
#$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.8.0.jar

$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.8.0.jar \
    -input /data/netflix_data/movie_titles.txt \
    -mapper ./mapreduce_jobs/map_movie_titles.py \
    -output /output/movie_titles

# mv_0000068 is given as input

$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.8.0.jar \
    -input /data/netflix_data/training_set/mv_0000068.txt \
    -mapper ./mapreduce_jobs/map_review.py \
    -reducer ./mapreduce_jobs/red_mean.py \
    -output /output/movie_0000068/

#year=2000
#while [[ $year -lt 2017  ]]
#do
    #$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.8.0.jar \
    #-cmdenv PARAM_OPT=$year \
    #-input /data/netflix_data/movie_titles.txt \
    #-mapper ./mapreduce_jobs/map_movie_year.py \
    #-reducer ./mapreduce_jobs/red_count.py \
    #-output /output/movie_year_$year
#
    #year=$[$year+1]
#done

# remove old local output directory
rm ./output -r

# download remote output in the local directory
$HADOOP_HOME/bin/hdfs dfs -get /output .
