terraform {
  required_providers {
    ibm = {
      source = "IBM/ibm"
      version = "1.52.0"  
    }
  }
}

provider "ibm" {
  ibmcloud_api_key = "ydLwWqBVoYlx11FvNH1SPcA8oMwkI0d8KpUS6wHat9VG"  
}


resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo 'This is a simple null resource example in IBM Schematics!'"
  }

  triggers = {
    example_trigger = "simple_trigger"
  }
}

output "null_resource_example_name" {
  value = null_resource.example.id
}
