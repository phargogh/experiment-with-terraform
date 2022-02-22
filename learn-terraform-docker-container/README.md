# Docker Tutorial

This tutorial launches an nginx container using terraform as the provider.

To execute from a fresh clone:

1. `terraform init`
2. `terraform apply`, then type `yes` when it asks for confirmation
3. Go to `localhost:8000` to verify that nginx did indeed start.
4. `docker ps` to see that the container is live.
5. `terraform destroy` to stop the container.
