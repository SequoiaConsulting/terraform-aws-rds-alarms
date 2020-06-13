variable "db_instance_id" {
  type        = string
  description = "RDS Instance ID"
}

variable "prefix" {
  type        = string
  default     = ""
  description = "Alarm Name Prefix"
}

variable "evaluation_period" {
  type        = string
  default     = "5"
  description = "The evaluation period over which to use when triggering alarms."
}

variable "statistic_period" {
  type        = string
  default     = "60"
  description = "The number of seconds that make each statistic period."
}

variable "anomaly_period" {
  type        = string
  default     = "600"
  description = "The number of seconds that make each evaluation period for anomaly detection."
}

variable "actions_alarm" {
  type        = list
  default     = []
  description = "A list of actions to take when alarms are triggered. Will likely be an SNS topic for event distribution."
}

variable "actions_ok" {
  type        = list
  default     = []
  description = "A list of actions to take when alarms are cleared. Will likely be an SNS topic for event distribution."
}

variable "cpu_utilization_too_high_threshold" {
  type        = string
  default     = "90"
  description = "Alarm threshold for the 'highCPUUtilization' alarm"
}

variable "cpu_credit_balance_too_low_threshold" {
  type        = string
  default     = "100"
  description = "Alarm threshold for the 'lowCPUCreditBalance' alarm"
}

variable "disk_queue_depth_too_high_threshold" {
  type        = string
  default     = "64"
  description = "Alarm threshold for the 'highDiskQueueDepth' alarm"
}

variable "disk_free_storage_space_too_low_threshold" {
  type        = string
  default     = "10000000000" // 10 GB
  description = "Alarm threshold for the 'lowFreeStorageSpace' alarm"
}

variable "disk_burst_balance_too_low_threshold" {
  type        = string
  default     = "100"
  description = "Alarm threshold for the 'lowEBSBurstBalance' alarm"
}

variable "memory_freeable_too_low_threshold" {
  type        = string
  default     = "256000000" // 256 MB
  description = "Alarm threshold for the 'lowFreeableMemory' alarm"
}

variable "memory_swap_usage_too_high_threshold" {
  type        = string
  default     = "256000000" // 256 MB
  description = "Alarm threshold for the 'highSwapUsage' alarm"
}

variable "tags" {
  description = "A map of tags to add to the sns_topic resource"
  type        = map(string)
  default     = {}
}

variable "cpu_utilization_too_high_enable" {
  description = "Enable alarm for the 'highCPUUtilization'"
  type = bool
  defaut = true
}

variable "cpu_credit_balance_too_low_enable" {
  description = "Enable alarm for the 'lowCPUCreditBalance'"
  type = bool
  defaut = true
}

variable "disk_queue_depth_too_high_enable" {
  description = "Enable alarm for the 'highDiskQueueDepth'"
  type = bool
  defaut = true
}

variable "disk_free_storage_space_too_low_enable" {
  description = "Enable alarm for the 'lowFreeStorageSpace'"
  type = bool
  defaut = true
}

variable "disk_burst_balance_too_low_enable" {
  description = "Enable alarm for the 'lowEBSBurstBalance'"
  type = bool
  defaut = true
}

variable "memory_freeable_too_low_enable" {
  description = "Enable alarm for the 'lowFreeableMemory'"
  type = bool
  defaut = true
}

variable "memory_swap_usage_too_high_enable" {
  description = "Enable alarm for the 'highSwapUsage'"
  type = bool
  defaut = true
}

variable "connection_count_anomalous_enable" {
  description = "Enable alarm for the 'anomalousConnectionCount'"
  type = bool
  defaut = true
}
