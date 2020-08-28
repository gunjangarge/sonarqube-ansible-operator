kubectl apply -f utils/sonarqube-data-pv.yaml
kubectl apply -f utils/sonarqube-logs-pv.yaml
kubectl apply -f utils/sonarqube-extensions-pv.yaml
make docker-build IMG=sonarqube-ansible-operator:v1
export IMG=sonarqube-ansible-operator:v1
make install
make deploy
kubectl config set-context --current --namespace=sonarqube-ansible-operator-system
kubectl apply -f config/samples/apps_v1_sonarqube.yaml
