#!/bin/sh

kubectl delete deployment caddypod
kubectl delete pods -l app=caddypod
kubectl delete service k8scaddy
kubectl delete gateway caddygw
kubectl delete virtualservice caddyvsvc
