# Terraform EKS

### Objetivo

#### Consiste em provisionar AWS EKS

#### Inicie o terraform

```bash
terraform init
```

#### Aplique a infraestrutura como código
```bash
terraform apply
```

#### Habilite a conexão com o EKS
```bash
aws eks --region us-east-1 update-kubeconfig --name nome-cluster
```

#### Verifique os nodes
```bash
kubectl get nodes
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.66.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.66.1 |

## EKS Version

| EKS  | Version  |
|------|---------|
| eks  |  1.27   |


## Resources

| Name | Type |
|------|------|
| [aws_eks_cluster.eks](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/eks_cluster) | resource |
| [aws_eks_node_group.node-grp](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/eks_node_group) | resource |
| [aws_iam_instance_profile.worker](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/iam_instance_profile) | resource |
| [aws_iam_policy.autoscaler](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/iam_policy) | resource |
| [aws_iam_role.master](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/iam_role) | resource |
| [aws_iam_role.worker](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.AmazonEKSClusterPolicy](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.AmazonEKSServicePolicy](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.AmazonEKSVPCResourceController](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.AmazonSSMManagedInstanceCore](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.autoscaler](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.s3](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.x-ray](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/iam_role_policy_attachment) | resource |
| [aws_instance.kubectl-server](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/instance) | resource |
| [aws_internet_gateway.gw](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/internet_gateway) | resource |
| [aws_route_table.rtb](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/route_table) | resource |
| [aws_route_table_association.a-1](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/route_table_association) | resource |
| [aws_route_table_association.a-2](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/route_table_association) | resource |
| [aws_security_group.allow_tls](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/security_group) | resource |
| [aws_subnet.public-1](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/subnet) | resource |
| [aws_subnet.public-2](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/subnet) | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/4.66.1/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance-ami"></a> [instance-ami](#input\_instance-ami) | n/a | `string` | `"ami-04cb4ca688797756f"` | no |
| <a name="input_instance-type"></a> [instance-type](#input\_instance-type) | n/a | `string` | `"t3a.medium"` | no |
| <a name="input_key"></a> [key](#input\_key) | n/a | `string` | `"deividdua"` | no |
| <a name="input_name-cluster"></a> [name-cluster](#input\_name-cluster) | n/a | `string` | `"duarte"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster-arn"></a> [cluster-arn](#output\_cluster-arn) | n/a |
