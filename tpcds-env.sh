#!/bin/bash
bin="$(cd "$(dirname "$0")";pwd)"

# the path to the tpcds-kit directory
export TPCDS_ROOT=$bin/tpcds-kit

# the table list file of tpcds
export tableNameList=$bin/tableList

# HDFS上存放文件的根目录地址
export FLATFILE_HDFS_ROOT=/user/lishuming/tpcds
#export FLATFILE_HDFS_ROOT=/user/hdfs/tpcds_data_test
#export FLATFILE_HDFS_ROOT=/user/hive/tpcds_data_1G

# 本地存放文件的根目录地址
export LOCAL_DATA_DIR=$bin/Data

# 原始数据大小(scale factor in GB)
# SF 3000 yields ~1TB for the store_sales table
export TPCDS_SCALE_FACTOR=1

# this is used to determine the number of dsdgen processes to generate data
# usually set to one per physical CPU core
# example - 20 nodes @ 12 threads each
export DSDGEN_NODES=1
export DSDGEN_THREADS_PER_NODE=4
export DSDGEN_TOTAL_THREADS=$((DSDGEN_NODES * DSDGEN_THREADS_PER_NODE))

# Database名称
export TPCDS_DBNAME=tpcds
export HADOOP_HOME=/Users/lishuming/softwares/hadoop
export SPARK_HOME=/Users/lishuming/softwares/spark

export PATH=$HADOOP_HOME/bin:$SPARK_HOME/bin:$PATH

export QUERY_SQL_DIR=$bin/query_sql_$TPCDS_SCALE_FACTOR
export QUERY_RESULT_DIR=$bin/query_result_$TPCDS_SCALE_FACTOR
