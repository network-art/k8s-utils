kubectl apply -f ../service-account.yaml 
kubectl apply -f ../rbac.yaml 

kubectl apply -f es-discovery-svc.yaml 
kubectl apply -f es-svc.yaml 

kubectl apply -f es-master-rc-wisc.yaml 
# Wait for es-master pod to run

kubectl apply -f es-client-rc-wisc.yaml
# Wait for es-client pod to run

kubectl apply -f es-data-rc-wisc.yaml
