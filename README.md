# AWS Postgres (RDS) Terraform module
Terraform module which deploy an RDS instance running Postgres as database engine.

## Usage
```json
module "rds-postgres" {
  source = "github.com/VadimCoding/terraform-aws-postgres-module"

  engine_version = "13.4"
  instance_class = "db.t3.micro"
  instance_name  = "my-db-instance1"

  db_name = "my_db"

  username = "admin"

  allocated_storage     = 10
  max_allocated_storage = 20

  storage_type = "standard"

  availability_zone = "eu-west-3a"

  backup_retention_period = 7
  backup_window           = "00:00-01:00"

}
```
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.26.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.3.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_db_instance.postgres](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |
| [random_password.db_user](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allocated_storage"></a> [allocated\_storage](#input\_allocated\_storage) | n/a | `number` | n/a | yes |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | The availabilyt zone to deploy the instance on. | `string` | n/a | yes |
| <a name="input_backup_retention_period"></a> [backup\_retention\_period](#input\_backup\_retention\_period) | The number of days to retains backups. | `number` | `7` | no |
| <a name="input_backup_window"></a> [backup\_window](#input\_backup\_window) | The daily time range during which automated backups are created. Eg "19:45-20:45" | `string` | n/a | yes |
| <a name="input_ca_cert_identifier"></a> [ca\_cert\_identifier](#input\_ca\_cert\_identifier) | The ID of the certificate. | `string` | `null` | no |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | The name of the database that will be created once the DB instance will be deploy. | `string` | n/a | yes |
| <a name="input_delete_automated_backups"></a> [delete\_automated\_backups](#input\_delete\_automated\_backups) | Whether or not to remove the backup automatically after the deletion of the DB. | `bool` | `true` | no |
| <a name="input_deletion_protection"></a> [deletion\_protection](#input\_deletion\_protection) | Whether or not preventing the database from being deleted. | `bool` | `true` | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | The version of the postgres you want to use. | `number` | `13.4` | no |
| <a name="input_instance_class"></a> [instance\_class](#input\_instance\_class) | The type of instance that will host the db instance. | `string` | n/a | yes |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | The name of the DB instance | `string` | n/a | yes |
| <a name="input_iops"></a> [iops](#input\_iops) | The number of iops you want to have for your DB instance. | `number` | `null` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | The ARN of the encryption key. | `string` | `null` | no |
| <a name="input_max_allocated_storage"></a> [max\_allocated\_storage](#input\_max\_allocated\_storage) | The maximum amount of storage RDS can scale up to. | `number` | n/a | yes |
| <a name="input_monitoring_interval"></a> [monitoring\_interval](#input\_monitoring\_interval) | The interval between data points for Enhanced Monitoring, in seconds. | `number` | `10` | no |
| <a name="input_multi_az"></a> [multi\_az](#input\_multi\_az) | Whether or not the DB is multi az. | `bool` | `false` | no |
| <a name="input_publicly_accessible"></a> [publicly\_accessible](#input\_publicly\_accessible) | Just read the name | `bool` | `false` | no |
| <a name="input_storage_type"></a> [storage\_type](#input\_storage\_type) | Choose between : standard, gp2, io1 | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | The username for the admin user. | `string` | n/a | yes |
| <a name="input_vpc_security_group_ids"></a> [vpc\_security\_group\_ids](#input\_vpc\_security\_group\_ids) | Just read the name | `list` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_address"></a> [instance\_address](#output\_instance\_address) | n/a |
| <a name="output_instance_arn"></a> [instance\_arn](#output\_instance\_arn) | n/a |
| <a name="output_instance_db_name"></a> [instance\_db\_name](#output\_instance\_db\_name) | n/a |
| <a name="output_instance_endpoint"></a> [instance\_endpoint](#output\_instance\_endpoint) | n/a |
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | n/a |
| <a name="output_instance_name"></a> [instance\_name](#output\_instance\_name) | n/a |
| <a name="output_instance_port"></a> [instance\_port](#output\_instance\_port) | n/a |
| <a name="output_instance_status"></a> [instance\_status](#output\_instance\_status) | n/a |
<!-- END_TF_DOCS -->