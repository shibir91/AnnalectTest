variable "ecs_cluster" {}
variable "public_securitygroup_id" {}
variable "subnet_id_public" {}
variable "subnet_id_private" {}

variable "ecs_key_pair_name" {
  description = "EC2 instance key pair name"
}
