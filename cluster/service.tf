resource "aws_ecs_service" "test-ecs-service" {
name = "test-vz-service"
cluster = "${aws_ecs_cluster.test-ecs-cluster.id}"
task_definition = "${aws_ecs_task_definition.test.family}:${max("${aws_ecs_task_definition.test.revision}",
"${data.aws_ecs_task_definition.test.revision}")}"
desired_count = 1
iam_role = "${aws_iam_role.ecs-service-role.name}"

load_balancer {
target_group_arn = "${var.target_group_arn}"
container_name = "nginx"
container_port = "8080"
}
}
