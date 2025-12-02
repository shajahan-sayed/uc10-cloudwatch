variable "aws_region" {
  type        = string
  description = "AWS region to deploy resources"
}

variable "log_name" {
  type        = string
  description = "CloudWatch Log Group name"
}

variable "retention_days" {
  type        = number
  description = "Retention for log group"
  default     = 30
}

variable "alarm_name" {
  type        = string
  description = "Name of the CloudWatch alarm"
}

variable "cpu_threshold" {
  type        = number
  description = "CPU alarm threshold"
  default     = 80
}

variable "alarm_sns_topic_arn" {
  type        = string
  description = "SNS topic ARN for alarm notifications"
}

variable "instance_id" {
  type        = string
  description = "EC2 instance ID for CPU alarm"
}
