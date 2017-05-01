#!/bin/bash

### THIS SCRIPT RUNS MAP REDUCE JOBS

# remove old output files
$HADOOP_HOME/bin/hdfs dfs -rm -r /output

# get movie titles
#./bin/get_movies.sh
# get mean for the film with id 0000068
#./bin/movie_mean.sh 0000068
# get films per year
#./bin/movie_per_year.sh 2000 2002

# mapreduce job, for each film get the mean rating
./bin/movies_mean.sh

# remove old local output directory
rm ./output -r

# download remote output in the local directory
$HADOOP_HOME/bin/hdfs dfs -get /output .
