#!/bin/bash

$HADOOP_HOME/bin/hdfs dfs -rm -r /output

$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.8.0.jar \
    -input /data/ECA/ \
    -mapper ./get_temps.py \
    -reducer ./red_mean.py \
    -output /output/temps \
    -cmdenv PARAM_OPT=$1

rm ./output/temps/*
rmdir ./output/temps

$HADOOP_HOME/bin/hdfs dfs -get /output .
