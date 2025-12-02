aws_region              = "ap-southeast-2"
log_name      = "/aws/example/log-group"
retention_days      = 14

alarm_name          = "HighCPUAlarm"
cpu_threshold       = 75

alarm_sns_topic_arn = "arn:aws:sns:us-east-1:123456789012:my-topic"
instance_id         = "i-0abcd1234efgh5678"
