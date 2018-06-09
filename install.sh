echo "-----------------------------------------------"
echo "###  Installing Scala...                    ###"
echo "-----------------------------------------------"
wget https://downloads.lightbend.com/scala/2.12.4/scala-2.12.4.tgz
tar xvf scala-2.12.4.tgz
rm https://downloads.lightbend.com/scala/2.12.4/scala-2.12.4.tgz
mv scala-2.12.4 ~/scala-2.12.4
echo SCALA_HOME="$HOME/scala-2.12.4" >> ~/.bash_profile
echo PATH=\"\$PATH:\$SCALA_HOME/bin\" >> ~/.bash_profile
echo "Done."

echo "-----------------------------------------------"
echo "###  Installing Java 1.8...                 ###"
echo "-----------------------------------------------"
sudo yum -y update     
sudo yum install -y java-1.8.0-openjdk-devel

echo "-----------------------------------------------"
echo "###  Please choose Java 1.8 from the list   ###"
echo "-----------------------------------------------"
sudo /usr/sbin/alternatives --config javac
sudo /usr/sbin/alternatives --config java
echo "Java Done."

echo "-----------------------------------------------"
echo "###  Installing SBT...                      ###"
echo "-----------------------------------------------"
curl https://bintray.com/sbt/rpm/rpm | sudo tee /etc/yum.repos.d/bintray-sbt-rpm.repo
sudo yum install -y sbt
echo "Done."

echo "-----------------------------------------------"
echo "###  Installing Spark...                    ###"
echo "-----------------------------------------------"
wget http://www-us.apache.org/dist/spark/spark-2.2.1/spark-2.2.1-bin-hadoop2.7.tgz
tar xvf spark-2.2.1-bin-hadoop2.7.tgz 
rm spark-2.2.1-bin-hadoop2.7.tgz 
mv spark-2.2.1-bin-hadoop2.7 ~/spark-2.2.1-bin-hadoop2.7
echo SPARK_HOME="$HOME/spark-2.2.1-bin-hadoop2.7" >> ~/.bash_profile
echo PATH=\"\$PATH:\$SPARK_HOME/bin\" >> ~/.bash_profile
echo export PATH >> ~/.bash_profile

echo "-----------------------------------------------"
echo "###  Enabling Scala Runner...               ###"
echo "-----------------------------------------------"
sh Enable\ Scala\ Runner.sh

echo "All Done."
echo "Please restart all terminal sessions."