sudo apt update
sudo apt upgrade -y
sudo apt install python3-pip -y
sudo pip3 install virtualenv
virtualenv ~/usr
source ~/usr/bin/activate
~/usr/bin/python -m pip install --upgrade pip
sudo apt install default-jdk -y
sudo apt install scala -y
wget https://mirrors.estointernet.in/apache/spark/spark-3.1.2/spark-3.1.2-bin-hadoop3.2.tgz
tar -xvf spark-3.1.2-bin-hadoop3.2.tgz 
sudo mv spark-3.1.2-bin-hadoop3.2 /opt/spark
echo "export SPARK_HOME=/opt/spark" >> ~/.profile
echo "export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin" >> ~/.profile
echo "export PYSPARK_PYTHON=/home/user4/usr/bin/python" >> ~/.profile
sed -i '/^export PATH=/ s/$/"/'  ~/.profile
sed -i '/^export PATH=/ s/=/="/' ~/.profile
source ~/.profile
pip install pandas pyarrow findspark jupyter
echo "spark.eventLog.enabled           true" >> /opt/spark/conf/spark-defaults.conf
echo "spark.history.fs.logDirectory       file:/tmp/spark-events" >> /opt/spark/conf/spark-defaults.conf
mkdir /tmp/spark-events










