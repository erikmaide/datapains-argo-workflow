# datapains-argo-workflow

Repository Used In Data Pains Series!

* [Whiskey Extractor](https://github.com/Thelin90/datapains-whiskey-el)

## Requirements

* Kubernetes `(docker-desktop, minikube, etc)`
* Helm
* Make
* Argo CLI

## Guide

*

## Argo Workflow

```bash
make setup-helm-argo-workflow
```

See versions [here](https://github.com/argoproj/argo-workflows/releases).

## Whiskey Extractor

```bash
make deploy-argo-workflow-chart CHART=whiskey-analytics
```

Update chart

```bash
make update-chart CHART=whiskey-analytics
```
