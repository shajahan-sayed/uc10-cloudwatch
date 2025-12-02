output "log_group_name" {
  value = aws_cloudwatch_log_group.exam.name
}

output "alarm_name" {
  value = aws_cloudwatch_metric_alarm.cpu_alarm.alarm_name
}
