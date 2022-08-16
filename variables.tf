variable "allocated_storage" {
  type = number
}
variable "engine_version" {
  type        = number
  description = "The version of the postgres you want to use."
  default     = 13.4
}
variable "instance_class" {
  type        = string
  description = "The type of instance that will host the db instance."

}
variable "db_name" {
  type        = string
  description = "The name of the database that will be created once the DB instance will be deploy."
}
variable "username" {
  type        = string
  description = "The username for the admin user."
}
variable "availability_zone" {
  type        = string
  description = "The availabilyt zone to deploy the instance on."
}
variable "backup_retention_period" {
  type        = number
  description = "The number of days to retains backups."
  default     = 7
}
variable "backup_window" {
  type        = string
  description = "The daily time range during which automated backups are created. Eg \"19:45-20:45\""
}
variable "ca_cert_identifier" {
  type        = string
  description = "The ID of the certificate."
  default = null
}
variable "delete_automated_backups" {
  type        = bool
  description = "Whether or not to remove the backup automatically after the deletion of the DB."
  default     = true
}
variable "deletion_protection" {
  type        = bool
  description = "Whether or not preventing the database from being deleted."
  default     = true
}
variable "instance_name" {
  type        = string
  description = "The name of the DB instance"
}
variable "iops" {
  type        = number
  description = "The number of iops you want to have for your DB instance."
  default = null
}
variable "kms_key_id" {
  type        = string
  description = "The ARN of the encryption key."
  default = null
}
variable "max_allocated_storage" {
  type        = number
  description = "The maximum amount of storage RDS can scale up to."
}
variable "monitoring_interval" {
  type        = number
  description = "The interval between data points for Enhanced Monitoring, in seconds."
  default = 10
}
variable "multi_az" {
  type        = bool
  description = "Whether or not the DB is multi az."
  default = false
}
variable "publicly_accessible" {
  type        = bool
  description = "Just read the name"
  default     = false
}
variable "storage_type" {
  type        = string
  description = "Choose between : standard, gp2, io1"
}
variable "vpc_security_group_ids" {
  type        = list
  description = "Just read the name"
  default = []
}
