#!/bin/bash

### INIT SCRIPT
### THIS SCRIPT STARTS MY ENVIRONMENT

# stop old instance
$HADOOP_HOME/sbin/stop-dfs.sh

# format my hdfs disk ( after reboot it's necessary! )
if [[ -e /tmp/hadoop-ubuntu/dfs/name ]]
then
	echo "a dfs disk exists" 
else
	echo "a dfs disk doesn't exists"
	$HADOOP_HOME/bin/hdfs namenode -format
fi

# start dfs daemon
$HADOOP_HOME/sbin/start-dfs.sh

# create a directory data inside the cluster
$HADOOP_HOME/bin/hdfs dfs -mkdir /data

echo "Putting data into the cluster, this task could take a lot of time..."
# uploading my data into cluster
$HADOOP_HOME/bin/hadoop fs -put ~/data/ /

