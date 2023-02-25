resource "aws_lb_target_group_attachment" "instance_tg_attach" {
  count = var.tg_attach ? 1 : 0 
  target_group_arn = var.tg_arn
  target_id        = aws_instance.ec2_instance_server.id
  port             = 80
}