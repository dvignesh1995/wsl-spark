
import findspark
findspark.init()
import pandas as pd

from pyspark import SQLContext
from pyspark import SparkContext
from pyspark import SparkConf
import pyspark.sql.functions as F

conf = (SparkConf())
sc = SparkContext(conf = conf)
spark = SQLContext(sc)

df = pd.DataFrame({'col1':[1]})
df = spark.createDataFrame(df)
df = df.withColumn('col2',F.lit('Successfully completed spark job.'))
print(df.show())
