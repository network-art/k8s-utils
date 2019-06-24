# Adapted from [Elasticsearch for Kubernetes](https://github.com/kubernetes/examples/tree/master/staging/elasticsearch)
* __service-account.yaml__: Definition of ServiceAccount resource (with name elasticsearch).
* __es-svc.yaml__: Definition of Service resource (with name elasticsearch).
* __es-rc.yaml__: Definition of Replication Controller (with name es).
* __es-rc-wisc.yaml__: Replication Controller definition with Istio Sidecar injection (created using istioctl kube-inject -f es-rc.yaml -o es-rc-wisc.yaml).
* __rbac.yaml__: Role and RoleBinding definitions.

You can choose to create the resources individually.
```bash
kubectl apply -f service-account.yaml
kubectl apply -f es-svc.yaml
kubectl apply -f es-rc.yaml
kubectl apply -f rbac.yaml
```

With Istio Sidecar injection:
```bash
kubectl apply -f service-account.yaml
kubectl apply -f es-svc.yaml
kubectl apply -f es-rc-wisc.yaml
kubectl apply -f rbac.yaml
```

Full/combined YAML with Istio Sidecar injection:
```bash
kubectl apply -f elasticsearch-wisc-full.yaml
```
