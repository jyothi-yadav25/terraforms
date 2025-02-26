


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
