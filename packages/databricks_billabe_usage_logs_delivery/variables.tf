
variable "account_id" {
  description = "Account Id that could be found in the bottom left corner of Accounts Console."
}
variable "credentials_name" {
  description = "(Required) name of credentials to register"
}
variable "role_arn" {
  description = "(Required) ARN of cross-account role to deliver logs to s3 bucket"
}

variable "bucket_name" {
  default     = ""
  description = "name of AWS S3 bucket for log,  create_s3_bucket variable will help you set the flag on wether to create the bucet or not "
}
variable "storage_configuration_name" {
  description = "name under which this storage configuration is stored"
}

variable "config_name" {
  description = "The optional human-readable name of the log delivery configuration. Defaults to empty."
}
variable "log_type" {
  value       = "BILLABLE_USAGE"
  description = "The type of log delivery. BILLABLE_USAGE and AUDIT_LOGS are supported."
}

variable "workspace_ids_filter" {
  default     = []
  description = "(Optional) By default, this log configuration applies to all workspaces associated with your account ID. If your account is on the E2 version of the platform or on a select custom plan that allows multiple workspaces per account, you may have multiple workspaces associated with your account ID. You can optionally set the field as mentioned earlier to an array of workspace IDs. If you plan to use different log delivery configurations for several workspaces, set this explicitly rather than leaving it blank. If you leave this blank and your account ID gets additional workspaces in the future, this configuration will also apply to the new workspaces."
}
variable "delivery_path_prefix" {
  description = "(Optional) Defaults to empty, which means that logs are delivered to the root of the bucket. The value must be a valid S3 object key. It must not start or end with a slash character."
}
variable "delivery_start_time" {
  default     = "2019-03"
  description = "(Optional) The optional start month and year for delivery, specified in YYYY-MM format. Defaults to current year and month. Usage is not available before 2019-03."
}