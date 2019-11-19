curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins
sudo yum install jenkins

wget http://pkg.jenkins.io/redhat-stable/repodata/repomd.xml

sudo systemctl start jenkins
systemctl status jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

mkdir jenkins
cd jenkins/
cd jenkins/
mkdir dynawo-multiconfig
cd ..
ls -l
ll /local
ll /home/infoger/jenkins/dynawo-multiconfig
ll jenkins/
cat /etc/init.d/jenkins
grep RUN_AS_USER /etc/init.d/jenkins
grep USER /etc/init.d/jenkins
sudo adduser dynamo
cd /home/dynamo/
cd jenkins/
cd dynawo-multiconfig/
git init /home/dynamo/jenkins/dynawo-multiconfig
sudo yum install cmake

grep USER /etc/sysconfig/jenkins
grep USER /etc/sysconfig/jenkins
vim /etc/sysconfig/jenkins

sudo systemctl restart jenkins
sudo systemctl status jenkins

cat /etc/passwd
sudo vim /etc/sysconfig/jenkins
ll /var/log/jenkins
sudo vim /etc/sysconfig/jenkins
sudo systemctl restart jenkins

chown -R dynamo:dynamo /var/lib/jenkins
sudo chown -R dynamo:dynamo /var/lib/jenkins
sudo chown -R dynamo:dynamo /var/cache/jenkins
sudo chown -R dynamo:dynamo /var/log/jenkins
sudo systemctl restart jenkins
sudo chown -R dynamo:dynamo /home/dynamo/jenkins/dynawo-multiconfig
sudo chown -R dynamo:dynamo /home/dynamo/jenkins/dynawo-multiconfig@tmp
cat dynawo/myEnvDynawo.sh

echo 'jenkins.model.Jenkins.instance.securityRealm.createAccount("test", "test123")' | java -jar ./jenkins-cli.jar -s "http://localhost:8080" -auth bureaugau:bureaugau -noKeyAuth groovy = –
