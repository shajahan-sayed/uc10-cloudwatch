#creating cloud watch log group

resource "aws_cloudwatch_log_group" "exam" {
   name = var.log_name
   retention_in_days = var.retention_days
}

#creating cloud watch metrics and alarm

resource "aws_cloudwatch_metric_alaram" "cpu_alarm" {
   alaram_name = var.alaram_name
   comparison_operator = "GreaterThanThreshold"
   evaluation_period = 2
   metric_name = var.metric_name
   name_space = "AWS/EC2"
   period = 120
   statistic           = "Average"
   threshold           = var.cpu_threshold

   alarm_description = "Alarm when CPU exceeds threshold"
   alarm_actions     = [var.alarm_sns_topic_arn]

  dimensions = {
    InstanceId = var.instance_id
  }
}
