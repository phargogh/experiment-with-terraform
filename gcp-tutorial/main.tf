// Contains settings like the providers used to provision infrastructure.
// Providers are installed from the terraform registry by default.
terraform {
  required_providers {
    google = {
      // hashicorp/google is shorthand for registry.terraform.io/hashicorp/google
      source = "hashicorp/google"
      // version attribute is optional, but advised.
      // If not provided, the latest version will be used which may introduce breaking changes.
      // NOTE: version 4.11.0 was needed (the latest) to work on my M1 mac.
      version = "4.11.0"
    }
  }
}

// This contains configuration for the specified provider.
// A provider section must be defined for each required_provider.
provider "google" {
  credentials = file("jdouglass-terraform-experiment-a34b97d94098.json")
  project = "jdouglass-terraform-experiment"
  region = "us-west1"
  zone = "us-west1-c"
}

// There will be one resource block per component of the infrastructure.
// A resource may be physical (like a server) or logical (like a Heroku application)
//
// Two strings here:
//  "google_compute_network" is the resource type.  The prefix matches the provider name.
//  "vpc_network" is the resource name.
//
// Together these strings form a unique ID for the resource: "google_compute_network.vpc_network"
//
// The options within a resource block configure the resource.
resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
