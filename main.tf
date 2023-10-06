module "eks" {
  source          = "./modules/eks"
  name-cluster    = var.name-cluster
  instance-ami    = var.instance-ami
  instance-type   = var.instance-type
  name-sg         = var.name-sg
  key             = var.key
  cluster-version = var.cluster-version
}

resource "helm_release" "my-release" {
  name  = "my-app"              # Nome do release Helm
  chart = "modules/helm-charts" # Diretório dentro do repositório contendo o chart Helm

  namespace = "default" # Namespace do Kubernetes onde o recurso será implantado
}
