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

### Application Dockerfile

Execute build image [Dockerfile](Dockerfile)
```sh
docker build -t kafka-study:0.1 .
```

Execute run docker image
```sh
docker run -p 8080:8080 kafka-study:0.1
```