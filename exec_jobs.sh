#!/bin/bash

### THIS SCRIPT RUNS MAP REDUCE JOBS

# remove old output files
$HADOOP_HOME/bin/hdfs dfs -rm -r /output

./bin/get_movies.sh
./bin/movie_mean.sh 0000068
./bin/movie_per_year.sh 2000

# remove old local output directory
rm ./output -r

# download remote output in the local directory
$HADOOP_HOME/bin/hdfs dfs -get /output .
