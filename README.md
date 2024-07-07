# datapains-argo-workflow

Repository Used In Data Pains Series!

* [Whiskey Extractor](https://github.com/Thelin90/datapains-whiskey-el)

## Requirements

* Kubernetes `(docker-desktop, minikube, etc)`
* Helm
* Make
* Argo CLI

## Guide

* https://medium.com/@simon.thelin90/tutorial-data-product-building-e2e-step-2-whiskey-extractor-in-argo-workflow-d317e9d2f92b

## Argo Workflow

```bash
make setup-local-helm-argo-workflow
```

Access UI [here](https://localhost:32767/).

See versions [here](https://github.com/argoproj/argo-workflows/releases).

## Whiskey Extractor

```bash
make deploy-argo-workflow-chart CHART=whiskey-analytics
```

Update chart

```bash
make update-chart CHART=whiskey-analytics
```

## Spark K8S Example

```bash
make deploy-argo-workflow-chart CHART=spark-k8s-example
```

Update chart

```bash
make update-chart CHART=spark-k8s-example
```
