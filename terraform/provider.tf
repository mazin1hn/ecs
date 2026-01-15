terraform {
    required_providers {
        aws = {
            source = var.aws_source
            version = var.aws_version
        }  

        cloudflare = {
            source  = var.cloudfare_source
            version = var.cloudfare_version
    }  
    }

}

provider "aws" {
    #Configuration options

    region = var.aws_region

}

provider "cloudfare" {
    api_token = var.cloudflare_api_token
}
  
