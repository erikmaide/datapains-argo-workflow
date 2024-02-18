update-chart: delete-argo-workflow-chart deploy-argo-workflow-chart

.PHONY: setup-local-helm-argo-workflow
setup-local-helm-argo-workflow:
	./tools/local/scripts/setup.sh

.PHONY: nuke-local-argo-workflow
nuke-local-argo-workflow:
	./tools/local/scripts/nuke.sh

.PHONY: deploy-argo-workflow-chart
deploy-argo-workflow-chart:
	helm install $(CHART) ./workflows/$(CHART) --post-renderer ./workflows/argo-post.sh

.PHONY: delete-argo-workflow-chart
delete-argo-workflow-chart:
	helm delete $(CHART)
