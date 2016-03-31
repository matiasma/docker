#!/bin/sh

date > /tmp/azuredeploy.log.$$ 2>&1
whoami >> /tmp/azuredeploy.log.$$ 2>&1

yum -y update >> /tmp/azuredeploy.log.$$ 2>&1
curl -fsSL https://get.docker.com/ | sh >> /tmp/azuredeploy.log.$$ 2>&1
systemctl enable docker >> /tmp/azuredeploy.log.$$ 2>&1
systemctl start docker >> /tmp/azuredeploy.log.$$ 2>&1
systemctl status docker >> /tmp/azuredeploy.log.$$ 2>&1

exit 0

