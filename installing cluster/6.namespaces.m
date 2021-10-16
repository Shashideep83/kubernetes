## Namespaces in k8s

# volume and node can't be created inside namespace
# list resources that can't be created inside namespace -`kubectl api-resources --namespaced=false`
# list resources that can be created inside namespace -`kubectl api-resources --namespaced=true`

1. **Get namespaces** --`kubectl get namespaces` or `kubectl get ns`
2. **Create namespaces** - `kubectl create namespace my-namespace`
3. **Get pods running in namespaces**- `kubectl get pod -n kube-system`
