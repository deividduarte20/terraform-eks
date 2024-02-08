provider "aws" {
  region = "us-east-1"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}


resource "null_resource" "update_kubeconfig" {
  provisioner "local-exec" {
    command = <<-EOT
      aws eks --region us-east-1 update-kubeconfig --name ${var.name-cluster}
    EOT
  }
  depends_on = [module.eks]
  triggers = {
    always_run = "${timestamp()}"
  }
}
