resource "aws_ecs_cluster" "test-ecs-cluster" {
    name = "ShibirPOC"
}
output "ecs_cluster" {
  value = "${aws_ecs_cluster.test-ecs-cluster.id}"
}
