output "application_endpoint" {
  // value = aws_lb.alb.dns_name
  value = aws_lb_target_group.alb_target_group.arn
}
