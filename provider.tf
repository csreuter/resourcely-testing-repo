provider "aws" {
  region = "us-east-1"

  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  access_key = "mock_access_key"
  secret_key = "mock_secret_key"
}

provider "github" {}

provider "google" {
  project = "demo"
  region  = "us-central1"
}
