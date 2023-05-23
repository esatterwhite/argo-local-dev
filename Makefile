.PHONY:kind-up
kind-up: ## Start kubernetes cluster
	./deployment/tilt/kind-up

.PHONY:kind-down
kind-down: ## Teardown a running kubernetes cluster
	./deployment/tilt/kind-down

.PHONY:tilt-up
tilt-up: ## Deploy kong to a running local kubernetes cluster via Tilt
	tilt up -f deployment/tilt/Tiltfile

.PHONY:tilt-down
tilt-down: ## Teardown a running Tilt installation
	tilt down -f deployment/tilt/Tiltfile --delete-namespaces
