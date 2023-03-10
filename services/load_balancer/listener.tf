
resource "aws_alb_listener" "listener_http" {
  load_balancer_arn = "${aws_alb.alb.arn}"
  port              = "80"
  protocol          = "HTTP"
  default_action {
    target_group_arn = "${aws_alb_target_group.target_group.arn}"
    type             = "forward"
  }
}