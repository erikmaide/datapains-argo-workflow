update-chart: delete-argo-workflow-chart deploy-argo-workflow-chart

.PHONY: setup-local-argo-workflow
setup-local-argo-workflow:
	kubectl apply -f tools/k8s/local/ --validate=false

.PHONY: delete-local-argo-workflow
delete-local-argo-workflow:
	kubectl delete -f tools/k8s/local/

.PHONY: nuke-local-argo-workflow
nuke-local-argo-workflow:
	kubectl delete namespaces argo

.PHONY: deploy-argo-workflow-chart
deploy-argo-workflow-chart:
	helm install $(CHART) ./workflows/$(CHART) --post-renderer ./workflows/argo-post.sh

.PHONY: delete-argo-workflow-chart
delete-argo-workflow-chart:
	helm delete $(CHART)
