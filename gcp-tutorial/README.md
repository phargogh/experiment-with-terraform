# GCP tutorial

Following https://learn.hashicorp.com/tutorials/terraform/google-cloud-platform-build

## Setup

1. Create a GCP project
2. Enable "Compute Engine" in the GCP console
3. Create a service account with `Editor` permissions, saving the key as json.
   * Copy the key into CWD and update the filename in `main.tf`.

## Format and Validate the config

1. `terraform init`
2. `terraform fmt` to apply consistent formatting across all `.tf` files in the CWD.
3. `terraform validate` to verify configuration is valid.

## Create infra

1. `terraform apply`


# Taking it from here

## Objective: Get it to work with what we need

- [x] how to deploy a VM with a startup script? --> See "server-1" configuration
- [ ] How to deploy with a build on GHA?
