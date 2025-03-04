terraform {
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "~> 1.55.0"
    }
  }
}

provider "ibm" {
  region = "us-south"
  ibmcloud_api_key = getenv("IBMCLOUD_API_KEY")
}
variable "ibmcloud_api_key" {}


resource "ibm_cd_toolchain" "cd_toolchain_instance" {
  description = "A sample toolchain to test the API"
  name = "TestToolchain"
  resource_group = "default"
  
}

resource "ibm_cd_toolchain_tool_githubconsolidated" "cd_toolchain_tool_githubconsolidated_instance" {
  initialization {
        git_id = "github"
        owner_id = "jyothi-yadav25"
        repo_name = "terraforms.git"
        source_repo_url = "https://github.com/jyothi-yadav25/terraforms.git"
        type = "clone"
        
  }
  parameters {
        
  }
  toolchain_id = ibm_cd_toolchain.cd_toolchain.id
}
