resource "aws_autoscaling_group" "ecs-autoscaling-group" {
    name                        = "ecs-autoscaling-group"
    max_size                    = 2
    min_size                    = 1
    desired_capacity            = 1
    vpc_zone_identifier         = ["${var.subnet_id_public}","${var.subnet_id_private}"]
    launch_configuration        = "${aws_launch_configuration.ecs-launch-configuration.name}"
    health_check_type           = "ELB"
  }
