env                   = "dev"
aws-region            = "us-east-1"
vpc-cidr-block        = "10.16.0.0/16"
vpc-name              = "vpc"
igw-name              = "igw"
pub-subnet-count      = 3
pub-cidr-block        = ["10.16.0.0/20", "10.16.16.0/20", "10.16.32.0/20"]
pub-availability-zone = ["us-east-1a", "us-east-1b", "us-east-1c"]
pub-sub-name          = "subnet-public"
pri-subnet-count      = 3
pri-cidr-block        = ["10.16.128.0/20", "10.16.144.0/20", "10.16.160.0/20"]
pri-availability-zone = ["us-east-1a", "us-east-1b", "us-east-1c"]
pri-sub-name          = "subnet-private"
public-rt-name        = "public-route-table"
private-rt-name       = "private-route-table"
eip-name              = "elasticip-ngw"
ngw-name              = "ngw"
eks-sg                = "eks-sg"

# EKS
is-eks-cluster-enabled     = true
cluster-version            = "1.31"
cluster-name               = "eks-cluster"
endpoint-private-access    = true
endpoint-public-access     = false
ondemand_instance_types    = ["t3a.medium"]
spot_instance_types        = ["t3a.medium", "t3.medium", "c5a.xlarge", "m5a.large", "m5a.xlarge", "t3a.large", "t3.micro", "t3a.micro"]  
desired_capacity_on_demand = "1"
min_capacity_on_demand     = "1"
max_capacity_on_demand     = "3"
desired_capacity_spot      = "1"
min_capacity_spot          = "1"
max_capacity_spot          = "6"
addons = [
  {
    name    = "vpc-cni",
    version = "v1.19.2-eksbuild.1"
  },
  {
    name    = "coredns"
    version = "v1.11.4-eksbuild.1"
  },
  {
    name    = "kube-proxy"
    version = "v1.31.3-eksbuild.2"
  },
  {
    name    = "aws-ebs-csi-driver"
    version = "v1.38.1-eksbuild.1"
  }
  # Add more addons as needed
]
