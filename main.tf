module "eks" {
  source        = "./modules/eks"
  name-cluster  = var.name-cluster
  instance-ami  = var.instance-ami
  instance-type = var.instance-type
  name-sg       = var.name-sg
  key           = var.key
}