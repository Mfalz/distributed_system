#!/bin/bash

$HADOOP_HOME/bin/hdfs dfs -rm -r /output/max_janu

$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.8.0.jar \
    -input /data/ECA/ \
    -mapper ./mean_janury.py \
    -output /output/max_janu \
    -reducer ./red_max_janury.py \

rm ./output/max_janu -r

$HADOOP_HOME/bin/hdfs dfs -get /output .
