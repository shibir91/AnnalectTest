resource "aws_launch_configuration" "ecs-launch-configuration" {
  name_prefix     = "ecs-launch-configuration"
  security_groups = ["${var.public_securitygroup_id}"]
  key_name                    = "${var.ecs_key_pair_name}"
  image_id                    = "${data.aws_ami.latest_ecs.id}"
  instance_type               = "t2.micro"
  iam_instance_profile        = "${aws_iam_instance_profile.ecs-ec2-role-profile.id}"
  user_data                   = "${data.template_file.ecs-cluster.rendered}"
  associate_public_ip_address = true
  lifecycle {
    create_before_destroy = true
  }
}
