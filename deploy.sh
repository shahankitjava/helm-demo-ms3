docker build -t shahankitturn/demo-ms3:latest -t shahankitturn/demo-ms3:$SHA .
docker push shahankitturn/demo-ms3:latest
docker push shahankitturn/demo-ms3:$SHA

kubectl apply -f k8s/helm-demo-ms3-service.yml
kubectl apply -f k8s/helm-demo-ms3-deployment.yml
kubectl apply -f k8s/helm-ms3-ingress-service.yml

kubectl set image deployment/helm-demo-ms3-deployment helm-demo-ms3-container=shahankitturn/demo-ms3:$SHA