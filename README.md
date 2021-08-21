# Wsl Spark

Shell script to setup apache-spark standalone in WSL-Ubuntu 20.04

## Requirements:
Ubuntu 20.04 running on WSL 2

## Usage:
#### Installation of spark
Run the Ubuntu app running on wsl

Execute the following commands

```
git clone https://gitlab.com/dvignesh1995/wsl-spark.git
. wsl-spark/spark_setup.sh
```

#### Running spark application
To test if spark installed correctly execute
```
spark-submit wsl-spark/test_spark.py
```
To run spark history server execute 
```
start-history-server.sh 
```
To run jupyter notebook execute 
```
jupyter notebook
```
(by default spark history server runs on localhost:18080 and jupyter notebook runs on localhost:8888

and can be accessed directly from browser)

### Only for pyspark
For accessing pyspark library prefix the python code with the following
```
# python code to link pyspark library
import findspark
findspark.init()
```
