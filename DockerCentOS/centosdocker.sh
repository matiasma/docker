#!/bin/sh

date > /tmp/azuredeploy.log.$$ 2>&1
whoami >> /tmp/azuredeploy.log.$$ 2>&1
echo $@ >> /tmp/azuredeploy.log.$$ 2>&1

sudo yum -y update >> /tmp/azuredeploy.log.$$ 2>&1

curl -fsSL https://get.docker.com/ | sh >> /tmp/azuredeploy.log.$$ 2>&1

sudo chkconfig docker on >> /tmp/azuredeploy.log.$$ 2>&1

sudo service docker start >> /tmp/azuredeploy.log.$$ 2>&1

exit 0

