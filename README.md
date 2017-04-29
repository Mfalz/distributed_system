# A Distributed System using hadoop
This is the project for the course "Distributed Systems 1"

## First Steps
1. Install java, python, node and git and config local path.

    <code>echo "export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre/" >> ~/.bashrc</code>

    <code>echo "export HADOOP_HOME=~/hadoop" >> ~/.bashrc</code>

2. Download hadoop 2.8 and unzip it in your home folder

    <code>wget hadoop_url</code>

    <code>tar xvf hadoop*.tar.jz</code>

    <code>mv hadoop* ./hadoop</code>

3. config hadoop to run as pseudo distributed system

    <code>source ~/.bashrc</code>

4. clone the repository and run ./start.sh

    <code>git clone https://github.com/seppho/distributed_system</code>

## Useful links
NameNode at http://localhost:50070

ResourceManager at http://localhost:8088

MapReduce JobHistoryServer at http://localhost:19888
