# kafka-study
### Minikube setup
[Doc - How to install minikube](https://minikube.sigs.k8s.io/docs/start/)

### Kafka deployment
Run the [zookeeper.yaml](k8s/zookeeper.yaml)
```sh
kubectl apply -f ./k8s/zookeeper.yaml
```

Run [kafka-broker.yaml](k8s/kafka-broker.yaml)
```sh
kubectl apply -f ./k8s/kafka-broker.yaml
```