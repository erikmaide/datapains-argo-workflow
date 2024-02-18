
.PHONY: setup-local-helm-argo-workflow
setup-local-helm-argo-workflow:
	./tools/local/scripts/setup.sh

.PHONY: nuke-local-argo-workflow
nuke-local-argo-workflow:
	./tools/local/scripts/nuke.sh

.PHONY: deploy-argo-workflow-template
deploy-argo-workflow-template:
	helm install check-bucket ./workflows/whiskey-analytics --post-renderer ./workflows/argo-post.sh
