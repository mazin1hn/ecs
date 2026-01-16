terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.62.0"
        }  

        cloudflare = {
            source  = "cloudflare/cloudflare"
            version = "5.15.0"
    }  
    }

}

provider "aws" {
    #Configuration options

    region = var.aws_region

}

provider "cloudflare" {
    api_token = var.cloudflare_api_token
    
}
  
