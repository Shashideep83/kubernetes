
**1. disable swap in servers - `sudo swapoff -a `**


**2. opening ports -** - `k8s api server should be open-0.0.0.0/0 (6443) rest all should be open to only VPC ip range.`

**3.set hostnames mapping and changing hostnames**

`sudo vi /etc/hosts`
```
172.31.9.21 master
172.31.6.104 worker-1
172.31.2.105 worker-2
```
```
sudo hostnamectl set-hostname master
sudo hostnamectl set-hostname worker-1
sudo hostnamectl set-hostname worker-2
```
