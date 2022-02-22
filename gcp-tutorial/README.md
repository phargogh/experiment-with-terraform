# GCP tutorial

## Setup

1. Create a GCP project
2. Enable "Compute Engine" in the GCP console
3. Create a service account with `Editor` permissions, saving the key as json.
   * Copy the key into CWD and update the filename in `main.tf`.

## Initialize the infra

1. `terraform init`
2. `terraform fmt` to apply consistent formatting across all `.tf` files in the CWD.
