
.PHONY: setup-local-helm-argo-workflow
setup-local-helm-argo-workflow:
	./tools/local/scripts/setup.sh

.PHONY: nuke-local-argo-workflow
nuke-local-argo-workflow:
	./tools/local/scripts/nuke.sh
