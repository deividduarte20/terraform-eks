output "cluster-arn" {
  value = aws_eks_cluster.eks.arn
}

output "eks_cluster_ready" {
  value = aws_eks_cluster.eks.name
}