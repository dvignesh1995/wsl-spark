
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

df = pd.DataFrame({'col1':[1,2,3,4]})
df = spark.createDataFrame(df)
print(df.show())
print('Successfully completed spark job.')
