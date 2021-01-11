## debug
### Curl into cluster with nslookup and curl preinstalled
Run debug deployment with nslookup, ping etc. installed
 
`kubectl run curl --image=radial/busyboxplus:curl -i --tty`

Check if cluster-dns-server has entry about service

`nslookup service-frontend-voting-service`

See complete history of pulling images, creating pods etc.

`kubectl get events`

### install hyperhit and minikube

`brew update`

`brew install hyperkit`

`brew install minikube`

`kubectl`

`minikube`

### create minikube cluster

`minikube start --vm-driver=hyperkit`

`kubectl get nodes`

`minikube status`

`kubectl version`

### delete cluster and restart in debug mode

`minikube delete`

`minikube start --vm-driver=hyperkit --v=7 --alsologtostderr`

`minikube status`

### kubectl commands

`kubectl get nodes`

`kubectl get pod`

`kubectl get services`

`kubectl create deployment nginx-depl --image=nginx`

`kubectl get deployment`

`kubectl get replicaset`

`kubectl edit deployment nginx-depl`

`kubectl delete -f service-calculate.yaml`

### debugging

`kubectl logs {pod-name}`

`kubectl exec -it {pod-name} -- bin/bash`

### create mongo deployment

`kubectl create deployment mongo-depl --image=mongo`

`kubectl logs mongo-depl-{pod-name}`

`kubectl describe pod mongo-depl-{pod-name}`

### delete deplyoment

`kubectl delete deployment mongo-depl`

`kubectl delete deployment nginx-depl`

### create or edit config file

`vim nginx-deployment.yaml`

`kubectl apply -f nginx-deployment.yaml`

`kubectl get pod`

`kubectl get deployment`

### delete with config

`kubectl delete -f nginx-deployment.yaml`

#Metrics

`kubectl top` The kubectl top command returns current CPU and memory usage for a cluster’s pods or nodes, or for a particular pod or node if specified.



