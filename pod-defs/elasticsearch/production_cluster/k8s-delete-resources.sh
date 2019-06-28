#!/bin/sh

kubectl delete replicationcontroller es-data
kubectl delete replicationcontroller es-client
kubectl delete replicationcontroller es-master
kubectl delete service elasticsearch
kubectl delete service elasticsearch-discovery
kubectl delete rolebinding elasticsearch
kubectl delete role elasticsearch
kubectl delete serviceaccount elasticsearch
