output "cluster-arn" {
  value = module.eks.cluster-arn
}

output "kubeconfig" {
  value = null_resource.update_kubeconfig.triggers
}
