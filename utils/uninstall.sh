make undeploy
kubectl delete -f config/samples/apps_v1_sonarqube.yaml
kubectl delete -f utils/sonarqube-extensions-pv.yaml
kubectl delete -f utils/sonarqube-logs-pv.yaml
kubectl delete -f utils/sonarqube-data-pv.yaml
rm -rf /sonarqube/data/*
rm -rf /sonarqube/logs/*
rm -rf /sonarqube/extensions/*
