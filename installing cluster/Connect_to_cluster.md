## Connect to cluster (kubeconfig & kubectl)


1. **Connect to master** - 
`sudo kubectl get node --kubeconfig /etc/kubernetes/admin.conf`

2. **Connect to master (env:current session)**-
```
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl get node
```
3. **Connect to master (env: adding env in kube folder)**-
```
mkdir -p ~/.kube
sudo cp /etc/kubernetes/admin.conf ~/.kube/config
sudo chown $(id -u):$(id -g) ~/.kube/config
kubectl get node
```
