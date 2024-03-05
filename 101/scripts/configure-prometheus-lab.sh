echo "---------- Configuring EKS  ----------"
eksctl create cluster -f infra/initial-cluster.yaml

echo "---------- server metrics----------"
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

echo "----------  PROMETHEUS STACK ----------"
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add stable https://charts.helm.sh/stable
helm repo update
helm install prometheus prometheus-community/kube-prometheus-stack

echo "---------- CONFIGURING TEST-API ----------"
kubectl create namespace test-api

