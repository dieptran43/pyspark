# Hadoop setup

To create a Docker network issue the following command:

$ docker network create sandbox-cluster

Examples
Getting in touch with HDFS from inside a container:

$ docker run -it --rm --name hdfs-shell --network sandbox-cluster -e "CORE_CONF_fs_defaultFS=hdfs://hadoop-namenode:8020" -e "CLUSTER_NAME=hadoop-sandbox" -v "d:/temp:/tmp:rw" -t uhopper/hadoop:2.7.2 /bin/bash
...
# 
Next we present some commands available in the Hadoop FileSystem Shell

Create directory in hdfs with mkdir - hdfs dfs -mkdir [-p] <paths>

$ hdfs dfs -mkdir /tmp
Copy file into hdfs with put - hdfs dfs -put <localsrc> ... <dst>

$ hdfs dfs -put sample.dat /tmp
List directory content with ls - hdfs dfs -ls <args>

$ hdfs dfs -ls /tmp
Found 1 items
-rw-r--r--   3 root supergroup  34212441 2017-10-01 21:04 /tmp/sample.dat
You can also run those commands directly via:

$ docker run -it --rm --network sandbox-cluster -e "CORE_CONF_fs_defaultFS=hdfs://hadoop-namenode:8020" -e "CLUSTER_NAME=hadoop-sandbox" -t uhopper/hadoop hdfs dfs -ls /