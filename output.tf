output "instance_status" {
  value = aws_db_instance.postgres.status
  description = "The status of the instance."
}

output "instance_endpoint" {
  value = aws_db_instance.postgres.endpoint
  description = "The endpoint to access to db instance."
}

output "instance_port" {
  value = aws_db_instance.postgres.port
  description = "The port to access the instance."
}

output "instance_address" {
  value = aws_db_instance.postgres.address
  description = "The address to access the instance."
}

output "instance_db_name" {
  value = aws_db_instance.postgres.db_name
  description = "The name of the database created on the instance."
}

output "instance_id" {
  value = aws_db_instance.postgres.id
  description = "The id of the instance."
}

output "instance_name" {
  value = aws_db_instance.postgres.name
  description = "The name of the instance."
}

output "instance_arn" {
  value = aws_db_instance.postgres.arn
  description = "The ARN of the db instance resource."
}
