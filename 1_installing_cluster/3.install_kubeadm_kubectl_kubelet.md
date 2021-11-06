## Installing Kubeadm , kubelet and kubectl


1. **kubelet**
- Used to start pods and containers
- Component that runs on all the machines in your cluster

2. **Kubectl** - command line tool to initialize the cluster

3. **kubeadm** - command line tool to talk the cluster


4. ** Running kubeadm init will ** :
    - Generate /etc/kubernetes folder
    - Generate a self-signed CA to set up identites in each component
    - Put genrated certs inside
    - Generate static pod manifest files into /etc/kubernetes/manifests
    - kubelet will detech manifest files and start the pods with suffix of hostname
    - kubeadm does not install or manage kubelet for you



**Steps to install Kubeadm , kubelet and kubectl in master** :

https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/#installing-kubeadm-kubelet-and-kubectl

**Update the apt package index and install packages needed to use the Kubernetes apt repository:**
```
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl
```
**Download the Google Cloud public signing key:**
```
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
```
**Add the Kubernetes apt repository:**

```
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
```
**Update apt package index, install kubelet, kubeadm and kubectl, and pin their version:**
```
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
#sudo apt-get install -y kubelet=1.21.0-00 kubeadm=1.21.0-00 kubectl=1.21.0-00 (with version)
sudo apt-mark hold kubelet kubeadm kubectl #(prevents upgrade or downgrade. fixates the version)
```

**list kubeadm versions**
`apt-cache madison kubeadm`


**bash script to automate the above process**
vi k8s-install-components

```
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
```
