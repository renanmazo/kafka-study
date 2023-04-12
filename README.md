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

### Application deployment

Execute build image [Dockerfile](Dockerfile)
```sh
docker build -t kafka-study:<tag> .
```

Execute run docker image
```sh
docker run -p 8080:8080 kafka-study:<tag>
```

Tag image
```sh
docker tag kafka-study:<tag> diegofsousa/kafka-study:<tag>
```

Push image
```sh
docker push diegofsousa/kafka-study:<tag>
```

Run [service.yaml](k8s/service.yaml)
```sh
kubectl apply -f ./k8s/service.yaml
```

Make port-foward
```sh
kubectl port-forward <kafka-study pod_name> 8080:8080
```