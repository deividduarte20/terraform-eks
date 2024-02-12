output "cluster-arn" {
  value = module.eks.cluster-arn
}

output "eks_cluster_ready" {
  value = module.eks.eks_cluster_ready
}
