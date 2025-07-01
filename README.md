# terraform-poc
export TEMPORAL_API_KEY=<your-secret-key>

## Terraform (Temporal Automation)

### Remote State
Terraform supports storing state in HCP Terraform, HashiCorp Consul, Amazon S3, Azure Blob Storage, Google Cloud Storage, Alibaba Cloud OSS, and more.
Remote state is implemented by a backend or by HCP Terraform, both of which you can configure in your configuration's root module.

#### Locking
For fully-featured remote backends, Terraform can also use state locking to prevent concurrent runs of Terraform against the same state.