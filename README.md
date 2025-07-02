# terraform-poc
## Temporal Cloud Provider Variables set as environment variables [Terraform Docs](https://registry.terraform.io/providers/temporalio/temporalcloud/latest/docs)
```shell
export TEMPORAL_API_KEY=<your-secret-key>  
export TEMPORAL_CLOUD_ENDPOINT=<defaults saas-api.tmprl.cloud:443>  
export TEMPORAL_CLOUD_ALLOW_INSECURE=<true|false>  
export TEMPORAL_CLOUD_ALLOWED_ACCOUNT_ID=<string id of account>  
```

## Terraform (Temporal Automation)

### Remote State [ref](https://developer.hashicorp.com/terraform/language/state/remote)
Terraform supports storing state in HCP Terraform, HashiCorp Consul, Amazon S3, Azure Blob Storage, Google Cloud Storage, Alibaba Cloud OSS, and more.
Remote state is implemented by a backend or by HCP Terraform, both of which you can configure in your configuration's root module.
#### Locking
For fully-featured remote backends, Terraform can also use state locking to prevent concurrent runs of Terraform against the same state.


Researching
https://spacelift.io/blog/github-actions-terraform
https://spacelift.io/blog/terraform-s3-backend
https://developer.hashicorp.com/terraform/tutorials/automation/github-actions