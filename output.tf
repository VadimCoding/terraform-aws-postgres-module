output "instance_status" {
  value = aws_db_instance.postgres.status
}

output "instance_endpoint" {
  value = aws_db_instance.postgres.endpoint
}

output "instance_port" {
  value = aws_db_instance.postgres.port
}

output "instance_address" {
  value = aws_db_instance.postgres.address
}

output "instance_db_name" {
  value = aws_db_instance.postgres.db_name
}

output "instance_id" {
  value = aws_db_instance.postgres.id
}

output "instance_name" {
  value = aws_db_instance.postgres.name
}

output "instance_arn" {
  value = aws_db_instance.postgres.arn
}
