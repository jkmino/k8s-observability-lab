# k8s-observability-lab

## Build cluster Using EKSCTL
- eksctl creatio:

```
eksctl create cluster -f Infra/initial-cluster.yaml
```
  
## Installing Tools
- Grafana stack :
```
./scripts/configure-prometheus-lab.sh
```

