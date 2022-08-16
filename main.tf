resource "random_password" "db_user" {
  length           = 12
  special = false
}

resource "aws_db_instance" "postgres" {

  engine         = "postgres"
  engine_version = var.engine_version //"13.4"
  instance_class = var.instance_class  //db.t3.micro
  db_name        = var.db_name

  username            = var.username
  password            = random_password.db_user.result
  publicly_accessible = false

  allocated_storage     = var.allocated_storage //10
  max_allocated_storage = var.max_allocated_storage

  storage_encrypted = true
  storage_type      = var.storage_type //io1, gp2, standard

  multi_az = var.multi_az

  availability_zone       = var.availability_zone
  backup_retention_period = var.backup_retention_period
  backup_window           = var.backup_window


  # create a certificate (private/public key) to authenticate the DB server with ACM
  ca_cert_identifier = var.ca_cert_identifier

  delete_automated_backups = false
  deletion_protection      = true

  enabled_cloudwatch_logs_exports = ["postgresql"]

  skip_final_snapshot = false
  # final_snapshot_identifier       = "final_snapshot_...." + var.db_name

  identifier = var.instance_name
  iops       = var.iops
  kms_key_id = var.kms_key_id

  monitoring_interval = 10
  # create a role to publish in cloudwatch
  #monitoring_role_arn

  # replicate_source_db
  # give the ARN if cross region, the identifier of the main instance if signel region

  # To create the db instance from a snapshot, pass the identifier of the snapshot found in the RDS console.
  vpc_security_group_ids = var.vpc_security_group_ids

}